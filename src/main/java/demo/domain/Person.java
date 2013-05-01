package demo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(schema = "Core")
public class Person extends Party {
	
	@Column(length = 20)
	@NotNull
	@JsonProperty
	private String firstName;
	
	@Column(length = 20)
	private String middleName;
	
	@Column(length = 30)
	@NotNull
	@JsonProperty
	private String lastName;
	
	@Column(length = 100)
	@NotNull
	@JsonProperty
	private String email;
	
	public String getFirstName() { return firstName; }
	public String getMiddleName() { return middleName; }
	public String getLastName() { return lastName; }
	public String getEmail() { return email; }

	@Transient
	public String getFullName() {
		StringBuilder sb = new StringBuilder();
		if (getLastName() != null) {
			sb.append(getLastName());
		}
		if (getFirstName() != null) {
			sb.append(", " + getFirstName()); 
		}
		return sb.toString();
	}
	

	public void setFirstName(String firstName) { this.firstName = firstName; }
	public void setMiddleName(String middleName) { this.middleName = middleName; }
	public void setLastName(String lastName) { this.lastName = lastName; }
	public void setEmail(String email) { this.email = email; }
}
