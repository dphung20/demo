package demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import demo.service.BuildingService;

@Controller
@RequestMapping(value = "/api/building", produces = "application/json; charset=utf-8")
public class BuildingController {
	
	@Autowired private BuildingService service;
	
	@RequestMapping(value = "/{id}/childfacility", method = RequestMethod.GET )
	@ResponseBody
	public Object findBuilding(@PathVariable Integer id) {
		return service.toJsonWithChildFacility(service.find(id));
	}
}
