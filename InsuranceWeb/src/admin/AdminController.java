package admin;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import adminRegister.Admin;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminValidate adminValidate;
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String showLogin(Model model) 
	{
		System.out.println("loging ");
		model.addAttribute("adminLogin", new AdminLogin());
		return "adminLogin";
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView formsubmit(@Valid @ModelAttribute("adminLogin")AdminLogin adminLogin, BindingResult br, Model model)
	{
		System.out.println("checking");
		ModelAndView view = new ModelAndView("adminLogin");
		if (!br.hasFieldErrors()) 
		{
			if (!adminValidate.authenticateUser(adminLogin)) {
				br.addError(new ObjectError("err", "Invalid Credentials"));
				
			} 
			else 
			{
				List<Admin> ins = adminValidate.home(adminLogin);
				model.addAttribute("view", ins);
				view.setViewName("redirect:/ins/view");
			}
		}
		return view;
	}
	@RequestMapping(value = "/adminreg", method = RequestMethod.GET)
	public ModelAndView redirect()
	{
		return new ModelAndView("redirect:/admin/page");
	}
}
