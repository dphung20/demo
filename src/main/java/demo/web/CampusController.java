package demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import demo.service.CampusService;

@Controller
@RequestMapping(value = "/api/campus", produces = "application/json; charset=utf-8")
public class CampusController {
	
	@Autowired private CampusService service;
	
	@RequestMapping(value = "/{id}/childfacility", method = RequestMethod.GET )
	@ResponseBody
	public Object findBuilding(@PathVariable Integer id) {
		return service.toJsonWithChildFacility(service.find(id));
	}
	
	@RequestMapping(value = "/{id}/childorganization", method = RequestMethod.GET )
	@ResponseBody
	public Object findCollege(@PathVariable Integer id) {
		return service.toJsonWithChildOrganization(service.find(id));
	}
}
