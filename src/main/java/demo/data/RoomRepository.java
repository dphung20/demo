package demo.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.Person;
import demo.domain.Room;


public interface RoomRepository extends JpaRepository<Room, Integer> {

	@Query("select r from Room r where r.code = ?1")
	Room findByCode(String code);
	
	@Query("select r from Room r where ?1 member of r.occupant")
	List<Room> findBy(Person person);

}
