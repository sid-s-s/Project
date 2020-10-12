package loans;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/loa")
public class LoanController {

	@Autowired
	LoanDao loanDao;

	@RequestMapping(value = "/loan", method = RequestMethod.GET)
	public String loan()
	{
		
		return "loan";
				
	}
	
	
	@RequestMapping(value = "/personalloan", method = RequestMethod.GET)
	public String personalloan(Map<String,Object> model)
	{
		 Personalloan i=new Personalloan();
		 model.put("personal",i);
		 return "personal";
	}
	 @RequestMapping(value="/personalloan", method=RequestMethod.POST)
	 public String personal(@ModelAttribute("personalloan") Personalloan i)
	{
		 loanDao.personal(i);
		return "submitted";
	}
	 
	 
	
	@RequestMapping(value = "/educational", method = RequestMethod.GET)
	public String eduloan(Map<String,Object> model) 
	{
		Educationalloan i = new Educationalloan();
		model.put("education", i);
		return "educational";

	}
	@RequestMapping(value="/educationalloan", method=RequestMethod.POST)
	 public String edu(@ModelAttribute("educationalloan") Educationalloan i)
	{
		loanDao.education(i);
		return "submitted";
	}
	
	
	
	
	@RequestMapping(value = "/homeloan", method = RequestMethod.GET)
	public String homeloan(Map<String,Object> model)
	{
		Homeloan i = new Homeloan();
		model.put("homeloan", i);
		return "homeloan";
		
	}
	@RequestMapping(value="/homeloan", method=RequestMethod.POST)
	 public String homeloann(@ModelAttribute("homeloan") Homeloan i)
	{
		loanDao.home(i);
		return "submitted";
	}
	
	
	
	@RequestMapping(value = "/automobile", method = RequestMethod.GET)
	public String autoloan(Map<String,Object> model)
	{
		Automobileloan i = new Automobileloan();
		model.put("auto", i);
		return "automobile";	
	}
	@RequestMapping(value="/automobile", method=RequestMethod.POST)
	 public String loann(@ModelAttribute("auto") Automobileloan i)
	{
		loanDao.auto(i);
		return "submitted";
	}
	
	
	
}
