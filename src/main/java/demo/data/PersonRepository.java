package demo.data;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.Person;

public interface PersonRepository extends JpaRepository<Person, Integer>{

	@Query("select p from Person p where upper(p.lastName) like upper(?1) and upper(p.firstName) like upper(?2)")
	List<Person> findByName(String lastName, String firstName, Pageable pageable);

}
