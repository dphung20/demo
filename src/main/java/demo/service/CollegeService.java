package demo.service;

import java.util.List;

import demo.domain.Campus;
import demo.domain.College;


public interface CollegeService extends OrganizationService<College> {
	
	List<College> findByCampus(Campus campus);

}
