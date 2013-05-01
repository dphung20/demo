package demo.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.Floor;


public interface FloorRepository extends JpaRepository<Floor, Integer>{

	@Query("select f from Floor f where f.code = ?1")
	Floor findByCode(String code);
}
