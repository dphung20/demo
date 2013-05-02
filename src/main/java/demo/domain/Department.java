package demo.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(schema = "Core")
public class Department extends Organization {

	@ManyToMany
	@JoinTable(schema = "Core", name = "DepartmentToPerson", inverseJoinColumns=@JoinColumn(name="Person"))
	private Set<Person> employees = new HashSet<Person>();

	public Set<Person> getEmployees() { return employees; }

	public void setEmployees(Set<Person> employees) { this.employees = employees; }
}
