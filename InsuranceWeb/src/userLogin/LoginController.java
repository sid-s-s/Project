package userLogin;

import java.util.List;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.servlet.ModelAndView;

import insuranceJdbc.Insurance;
import loans.LoanDao;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/ins")
public class LoginController {
	
	@Autowired
	LoginValidate loginValidate;
	LoanDao loanDao;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(Model model) 
	{
		System.out.println("loging ");
		model.addAttribute("login", new Login());
		return "login";
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView formsubmit(@Valid @ModelAttribute("login")Login login, BindingResult br, Model model)
	{
		System.out.println("checking");
		ModelAndView view = new ModelAndView("login");
		if (!br.hasFieldErrors()) 
		{
			if (!loginValidate.authenticateUser(login)) {
				br.addError(new ObjectError("err", "Invalid Credentials"));
				
			} 
			else 
			{
				List<Insurance> ins = loginValidate.home(login);
				model.addAttribute("view", ins);
				view.setViewName("home");
			}
		}
		return view;
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView redirect()
	{
		return new ModelAndView("redirect:/ins/page");
	}
	
}