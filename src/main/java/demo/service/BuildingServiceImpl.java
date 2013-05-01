package demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import demo.data.BuildingRepository;
import demo.domain.Building;


@Service
@Transactional
public class BuildingServiceImpl extends OrganizationServiceImpl<Building> implements BuildingService {
	
	@Autowired private BuildingRepository buildingRepository;
	
	public BuildingRepository getBuildingRepository() { return buildingRepository; }
	public void setBuildingRepository(BuildingRepository buildingRepository) { this.buildingRepository = buildingRepository; }

	@Override
	public Building find(Integer id) {
		return buildingRepository.findOne(id);
	}

	@Override
	public Building findByCode(String code) {
		return buildingRepository.findByCode(code);
	}
	
	@Override
	public Building save(Building entity) {
		return buildingRepository.save(entity);
	}
}
