package demo.web;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/traditional")
public class TraditionalController {


	@RequestMapping("/")
	public String index(Model model,  Principal principal) {
		return "/traditional/index";
	}
	

}
