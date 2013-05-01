package demo.service;

import java.util.List;

import demo.domain.College;
import demo.domain.Department;


public interface DepartmentService extends OrganizationService<Department> {
	
	List<Department> findByCollege(College college);
	
	void delete(Integer id);

	String toJsonWithEmployee(Department department);

}
