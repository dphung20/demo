package demo.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.Campus;
import demo.domain.College;


public interface CollegeRepository extends JpaRepository<College, Integer> {
	
	@Query("select c from College c where c.parentOrganization = ?1")
	List<College> findByCampus(Campus campus);

}
