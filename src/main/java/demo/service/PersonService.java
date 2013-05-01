package demo.service;

import java.util.Collection;
import java.util.List;

import org.springframework.data.domain.Pageable;

import demo.domain.Person;
import demo.domain.Room;

public interface PersonService extends BaseService<Person, Integer> {

	List<Person> findByName(String lastName, String firstName, Pageable pageable);
	
	String toJson(Collection<Person> entities);

	String toJson(Person person, List<Room> rooms);
	
	String toJsonTypeAhead(List<Person> entities);
}
