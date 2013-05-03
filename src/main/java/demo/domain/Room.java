package demo.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(schema = "Core")
public class Room extends Organization{
	
	@ManyToMany
	@JoinTable(schema = "Core", name = "RoomToPerson", inverseJoinColumns=@JoinColumn(name="Person"))
	private Set<Person> occupant = new HashSet<Person>();

	public Set<Person> getOccuupant() { return occupant; }

	public void setOccuupant(Set<Person> occuupant) { this.occupant = occuupant; }

}
