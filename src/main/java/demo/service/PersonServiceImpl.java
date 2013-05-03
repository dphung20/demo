package demo.service;

import java.io.StringWriter;
import java.util.Collection;
import java.util.List;

import javax.xml.bind.DataBindingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;

import demo.data.PersonRepository;
import demo.domain.Building;
import demo.domain.Person;
import demo.domain.Room;

@Service
@Transactional
public class PersonServiceImpl extends BaseServiceImpl<Person, Integer> implements PersonService {
	
	@Autowired private PersonRepository personRepository;
	
	public PersonRepository getPersonRepository() { return personRepository; }

	public void setPersonRepository(PersonRepository personRepository) { this.personRepository = personRepository; }

	@Override
	public Person find(Integer id) {
		return personRepository.findOne(id);
	}
	
	@Override
	public List<Person> findByName(String lastName, String firstName, Pageable pageable) {
		return personRepository.findByName(lastName + "%", firstName + "%", pageable);
	}
	
	@Override
	@CacheEvict(value = "user", key = "getPrincipal()")
	public Person save(Person entity) {
		return personRepository.save(entity);
	}
	
	@Override
	public String toJson(Collection<Person> entities) {
		try {
			StringWriter sw = new StringWriter();
			
			JsonFactory factory = new JsonFactory();
			JsonGenerator json = factory.createJsonGenerator(sw);
			json.writeStartArray();
			
			for(Person item : entities) {
				json.writeStartObject();
				json.writeStringField("id", String.valueOf(item.getId()));
				json.writeStringField("firstName", item.getFirstName());
				json.writeStringField("lastName", item.getLastName());
				json.writeStringField("email", item.getEmail());
				json.writeEndObject();
			}
			
			json.writeEndArray();
			json.close();
			
			return sw.toString();
		} catch(Exception e) {
			throw new DataBindingException(e);
		}
	}
	
	@Override
	public String toJson(Person person, List<Room> rooms) {
		try {
			StringWriter sw = new StringWriter();
			
			JsonFactory factory = new JsonFactory();
			JsonGenerator json = factory.createJsonGenerator(sw);
	
			json.writeStartObject();
			json.writeFieldName("person");
			json.writeRawValue(toJson(person));
			json.writeFieldName("rooms");
			
			json.writeStartArray();
			
			for(Room room : rooms) {
				json.writeStartObject();
				json.writeStringField("clazz", ".Room");
				json.writeStringField("id", String.valueOf(room.getId()));
				json.writeStringField("name", room.getName());
				
				Building building = room.getAncestorFacility(Building.class);
				json.writeFieldName("building");
				json.writeStartObject();
				json.writeStringField("clazz", ".Building");
				json.writeStringField("id", String.valueOf(building.getId()));
				json.writeStringField("name", building.getName());
				json.writeEndObject();
				
				json.writeEndObject();
			}
			
			json.writeEndArray();
			
			json.writeEndObject();
			
			
			json.close();
			
			return sw.toString();
		} catch(Exception e) {
			throw new DataBindingException(e);
		}
	}
	
	@Override
	public String toJsonTypeAhead(List<Person> entities) {
		try {
			StringWriter sw = new StringWriter();
			
			JsonFactory factory = new JsonFactory();
			JsonGenerator json = factory.createJsonGenerator(sw);
			
			json.writeStartArray();
			
			for(Person item : entities) {
				json.writeStartObject();
				json.writeStringField("clazz", "." + item.getClass().getSimpleName());
				json.writeStringField("id", String.valueOf(item.getId()));
				json.writeStringField("value", item.getLastName() + ", " + item.getFirstName());
				json.writeStringField("firstName", item.getFirstName());
				json.writeStringField("lastName", item.getLastName());
				json.writeEndObject();
			}
			
			json.writeEndArray();
			
			json.close();
			
			return sw.toString();
		} catch(Exception e) {
			throw new DataBindingException(e);
		}
	}

}
