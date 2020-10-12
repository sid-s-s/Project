package adminRegister;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import insuranceJdbc.Insurance;
import insuranceJdbc.InsuranceDao;

@Controller
@RequestMapping("/admin")
public class AdminMainController {

	
	 @Autowired
	 private AdminDao adminDao;
	 private InsuranceDao insuranceDao;
	
	 
	 @RequestMapping(value="/page", method=RequestMethod.GET)
	 public String show(Map<String,Object> model)
	 {
		 Admin i=new Admin();
		 model.put("adminreg",i);
		 return "adminreg";
	 }
	 
	 @RequestMapping(value="/insert", method=RequestMethod.POST)
	 public ModelAndView insert(@Valid @ModelAttribute("adminreg") Admin i,BindingResult result)
	    {
		 
		 if(result.hasErrors())
		 {
			 return new ModelAndView("adminreg");
		 }
		 adminDao.insert(i);
		 
	     return new ModelAndView("redirect:/admin/adminLogin");
	    }
	 @RequestMapping(value = "/view", method = RequestMethod.GET)
		public String selectAllBooks(ModelMap model) 
		{
			
			List<Insurance> ins = insuranceDao.view();
			model.addAttribute("view", ins);

			return "show";
		}
	 @RequestMapping(value="/delete/{serialno}",method=RequestMethod.GET)
	    public ModelAndView delete(@PathVariable int serialno)
	    {
		 insuranceDao.delete(serialno);
			System.out.println("deleted");
	    	return new ModelAndView("redirect:/ins/view");	
	    }
	 @RequestMapping(value="/updateReg/{serialno}/{firstname}/{lastname}/{username}/{password}/{mobileno}/{email}",method=RequestMethod.GET)
     public String update(@PathVariable int serialno,@PathVariable String firstname, @PathVariable String lastname, @PathVariable String username, @PathVariable String password, @PathVariable int mobileno, @PathVariable String email, ModelMap model) 
     {
    	 System.out.println("updating");
    	 Insurance i = new Insurance(serialno,firstname,lastname,username,password,mobileno,email);
             model.addAttribute("adminreg",i);
             return "update";
     }
     
     @RequestMapping(value="/updateReg",method=RequestMethod.POST)
     //@ResponseBody
     public ModelAndView update(@ModelAttribute("adminreg")Insurance i)
     {
    	 insuranceDao.update(i);
         return  new ModelAndView("redirect:/ins/view");
     } 
}
