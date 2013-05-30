package demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import demo.domain.Person;
import demo.domain.Room;
import demo.service.PersonService;
import demo.service.RoomService;

@Controller
@RequestMapping(value = "/api/room", produces = "application/json; charset=utf-8")
public class RoomController {
	
	@Autowired private RoomService roomService;
	@Autowired private PersonService personService;
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET )
	@ResponseBody
	public Object find(@PathVariable Integer id) {
		return roomService.toJson(roomService.find(id));
	}
	
	@RequestMapping(value = "/{id}/person/{personId}", method = RequestMethod.PUT)
	@ResponseBody
	public Object addPerson(@PathVariable Integer id, @PathVariable Integer personId) {
		Room room = roomService.find(id);
		Person person = personService.find(personId);
		
		room.getOccuupant().add(person);
		roomService.save(room);
		
		return roomService.toJsonWithBuilding(room);
	}
	
	@RequestMapping(value = "/{id}/person/{personId}", method = RequestMethod.DELETE)
	@ResponseBody
	public Object removePerson(@PathVariable Integer id, @PathVariable Integer personId) {
		Room room = roomService.find(id);
		Person person = personService.find(personId);
		
		room.getOccuupant().remove(person);
		roomService.save(room);
		
		return roomService.toJson(room);
	}
}
