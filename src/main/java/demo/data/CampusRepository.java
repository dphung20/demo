package demo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.Campus;


public interface CampusRepository extends JpaRepository<Campus, Integer>{

	@Query("select c from Campus c where c.code = ?1")
	Campus findByCode(String code);
}
