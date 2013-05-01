package demo.data;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.Person;

public interface PersonRepository extends JpaRepository<Person, Integer>{

	@Query("select p from Person p where p.lastName like ?1 and p.firstName like ?2")
	List<Person> findByName(String lastName, String firstName, Pageable pageable);

}
