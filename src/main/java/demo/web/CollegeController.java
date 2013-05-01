package demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import demo.service.CollegeService;

@Controller
@RequestMapping(value = "/api/college", produces = "application/json; charset=utf-8")
public class CollegeController {
	
	@Autowired private CollegeService service;
	
	@RequestMapping(value = "/{id}/department", method = RequestMethod.GET )
	@ResponseBody
	public Object findCollege(@PathVariable Integer id) {
		return service.toJsonWithChildOrganization(service.find(id));
	}

}
