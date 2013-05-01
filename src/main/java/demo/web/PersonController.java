package demo.web;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import demo.domain.Person;
import demo.domain.Room;
import demo.service.CampusService;
import demo.service.PersonService;
import demo.service.RoomService;

@Controller
@RequestMapping(value = "/api/person", produces = "application/json; charset=utf-8")
public class PersonController {
	
	@Autowired private PersonService personService;
	@Autowired private RoomService roomService;
	@Autowired private CampusService campusService;
		
	@RequestMapping(value = "/{id}/room", method = RequestMethod.GET)
	@ResponseBody
	public Object index(@PathVariable("id") Integer id) {
		Person person = personService.find(id);
		List<Room> rooms = roomService.findBy(person);

		return personService.toJson(person, rooms);
	}
	
	@RequestMapping(value = "/find", method = RequestMethod.GET)
	@ResponseBody
	public Object find(String search) throws IOException {
		String[] name = search.split(",");
		return personService.toJsonTypeAhead(personService.findByName(name[0].trim(), name.length > 1 ? name[1].trim() : "", new PageRequest(0, 10)));
	}
}
