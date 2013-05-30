package demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import demo.domain.Department;
import demo.service.CollegeService;
import demo.service.DepartmentService;
import demo.service.PersonService;

@Controller
@RequestMapping(value = "/api/department", produces = "application/json; charset=utf-8")
public class DepartmentController {
	
	@Autowired private DepartmentService service;
	@Autowired private CollegeService collegeService;
	@Autowired private PersonService personService;
	
	@RequestMapping(value = "/{id}/childorganization", method = RequestMethod.GET)
	@ResponseBody
	public Object findDepartment(@PathVariable Integer id) {
		Department department = service.find(id);
		return service.toJsonWithEmployee(department);
	}
	
	@RequestMapping(value = "{id}/childorganization/{childId}", method = RequestMethod.PUT)
	@ResponseBody
	public Object addEmployee(@PathVariable Integer id, @PathVariable Integer childId) {
		Department department = service.find(id);
		department.getEmployees().add(personService.find(childId));
		return service.toJsonWithEmployee(service.save(department));
	}
	
	@RequestMapping(value = "{id}/childorganization/{childId}", method = RequestMethod.DELETE)
	@ResponseBody
	public Object removeEmployee(@PathVariable Integer id, @PathVariable Integer childId) {
		Department department = service.find(id);
		department.getEmployees().remove(personService.find(childId));
		return service.toJsonWithEmployee(service.save(department));
	}
	
	

}
