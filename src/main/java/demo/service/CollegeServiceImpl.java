package demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import demo.data.CollegeRepository;
import demo.domain.Campus;
import demo.domain.College;


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

}
