package demo.service;

import java.util.List;

import demo.domain.Person;
import demo.domain.Room;


public interface RoomService extends OrganizationService<Room> {

	List<Room> findBy(Person person);
}
