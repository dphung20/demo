package demo.service;

import java.io.StringWriter;
import java.util.List;

import javax.xml.bind.DataBindingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;

import demo.data.RoomRepository;
import demo.domain.Organization;
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
	
	@Override
	public String toJsonWithBuilding(Room entity) {
		try {
			StringWriter sw = new StringWriter();
			
			JsonFactory factory = new JsonFactory();
			JsonGenerator json = factory.createJsonGenerator(sw);
			json.writeStartObject();
			json.writeStringField("clazz", "." + entity.getClass().getSimpleName());
			json.writeStringField("id", String.valueOf(entity.getId()));
			json.writeStringField("name", entity.getName());

			Organization building = entity.getParentFacility().getParentFacility();
			json.writeFieldName("building");
			json.writeStartObject();
			json.writeStringField("clazz", "." + building.getClass().getSimpleName());
			json.writeStringField("id", String.valueOf(building.getId()));
			json.writeStringField("name", building.getName());
			json.writeEndObject();
			
			json.writeEndObject();
			json.close();
			
			return sw.toString();
		} catch(Exception e) {
			throw new DataBindingException(e);
		}
	}
	
}
