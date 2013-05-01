package demo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.Building;


public interface BuildingRepository extends JpaRepository<Building, Integer>{

	@Query("select b from Building b where b.code = ?1")
	Building findByCode(String code);
}
