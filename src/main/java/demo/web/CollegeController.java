package demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import demo.domain.College;
import demo.domain.Department;
import demo.service.CollegeService;
import demo.service.DepartmentService;

@Controller
@RequestMapping(value = "/api/college", produces = "application/json; charset=utf-8")
public class CollegeController {
	
	@Autowired private CollegeService collegeService;
	@Autowired private DepartmentService departmentService;
	
	@RequestMapping(value = "/{id}/childorganization", method = RequestMethod.GET )
	@ResponseBody
	public Object findCollege(@PathVariable Integer id) {
		return collegeService.toJsonWithChildOrganization(collegeService.find(id));
	}

	@RequestMapping(value = "/{id}/childorganization", method = RequestMethod.PUT )
	@ResponseBody
	public Object saveDepartment(@PathVariable Integer id, @RequestBody Department formBean) {
		College college = collegeService.find(id);
		collegeService.addDepartment(college, formBean);
		return collegeService.toJsonWithChildOrganization(college);
	}
	
	@RequestMapping(value = "/{id}/childorganization/{childId}", method = RequestMethod.DELETE)
	@ResponseBody
	public Object deleteDepartment(@PathVariable Integer id, @PathVariable Integer childId) {
		College college = collegeService.find(id);

		Department department = departmentService.find(childId);
		college.getChildOrganization().remove(department);
		
		collegeService.save(college);
		
		return collegeService.toJsonWithChildOrganization(college);
	}	
}
