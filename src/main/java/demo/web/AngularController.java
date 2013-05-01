package demo.web;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/angular")
public class AngularController {


	@RequestMapping("/")
	public String index(Model model,  Principal principal) {
		return "/angular/index";
	}
	

}
