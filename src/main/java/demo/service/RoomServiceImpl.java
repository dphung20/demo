package demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.data.RoomRepository;
import demo.domain.Person;
import demo.domain.Room;


@Service
public class RoomServiceImpl extends OrganizationServiceImpl<Room> implements RoomService{

	@Autowired private RoomRepository repository;
	
	public RoomRepository getRoomRepository() { return this.repository; }
	public void setRoomRepository(RoomRepository repository) { this.repository = repository; }

	@Override
	public Room find(Integer id) {
		return repository.findOne(id);
	}

	@Override
	public Room findByCode(String code) {
		return repository.findByCode(code);
	}

	@Override
	public List<Room> findBy(Person person) {
		return repository.findBy(person);
	}

	@Override
	public Room save(Room room) {
		return repository.save(room);
	}
	
}
