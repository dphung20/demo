package demo.web;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	@RequestMapping("/")
	public String index(Model model,  Principal principal) {
		return "index";
	}
	
	@RequestMapping(value="/slides")
	public String slides() {
		return "slides";
	}

}
