package demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.base.Preconditions;

import demo.data.CollegeRepository;
import demo.domain.Campus;
import demo.domain.College;
import demo.domain.Department;


@Service
@Transactional
public class CollegeServiceImpl extends OrganizationServiceImpl<College> implements CollegeService {

	@Autowired private CollegeRepository repository;
	
	public CollegeRepository getCollegeRepository() { return this.repository; }
	public void setCollegeRepository(CollegeRepository repository) { this.repository = repository; }
	
	@Override
	public College find(Integer id) {
		return repository.findOne(id);
	}
	
	@Override
	public College findByCode(String code) {
		return null;
	}
	@Override
	public College save(College entity) {
		return repository.save(entity);
	}
	
	@Override
	public List<College> findByCampus(Campus campus) {
		return repository.findByCampus(campus);
	}

	@Override
	public College addDepartment(College college, Department department) {
		Preconditions.checkNotNull(college, "College can not be null");
		Preconditions.checkNotNull(department, "Department can not be null");
		
		college.getChildOrganization().add(department);
		department.setParentOrganization(college);
		return repository.save(college);
	}
}
