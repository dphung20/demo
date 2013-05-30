package demo.service;

import java.util.List;

import demo.domain.Campus;
import demo.domain.College;
import demo.domain.Department;


public interface CollegeService extends OrganizationService<College> {
	
	List<College> findByCampus(Campus campus);

	College addDepartment(College college, Department department);

}
