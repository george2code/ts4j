package ru.trustsystem;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.trustsystem.businesslogic.PageHelper;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		model.addAttribute("message", "Hello world!");
		model.addAttribute("title", PageHelper.GetPageTitle(""));
		model.addAttribute("controller", PageHelper.GetControllerName(getClass()));

		return "hello";
	}
}