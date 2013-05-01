package demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import demo.data.FloorRepository;
import demo.domain.Floor;


@Service
@Transactional
public class FloorServiceImpl extends OrganizationServiceImpl<Floor> implements FloorService {
	
	@Autowired private FloorRepository floorRepository;
	
	public FloorRepository getFloorRepository() { return floorRepository; }
	public void setFloorRepository(FloorRepository floorRepository) { this.floorRepository = floorRepository; }

	@Override
	public Floor find(Integer id) {
		return floorRepository.findOne(id);
	}

	@Override
	public Floor findByCode(String code) {
		return floorRepository.findByCode(code);
	}
	
	@Override
	public Floor save(Floor entity) {
		return floorRepository.save(entity);
	}

}
