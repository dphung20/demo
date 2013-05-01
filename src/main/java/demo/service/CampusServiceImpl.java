package demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import demo.data.CampusRepository;
import demo.domain.Campus;


@Service
@Transactional
public class CampusServiceImpl extends OrganizationServiceImpl<Campus> implements CampusService {
	
	@Autowired private CampusRepository campusRepository;
	
	public CampusRepository getCampusRepository() { return campusRepository; }
	public void setCampusRepository(CampusRepository repository) { this.campusRepository = repository; }

	@Override
	public Campus find(Integer id) {
		return campusRepository.findOne(id);
	}

	@Override
	public Campus findByCode(String code) {
		return campusRepository.findByCode(code);
	}
	
	@Override
	public Campus save(Campus entity) {
		return campusRepository.save(entity);
	}
}
