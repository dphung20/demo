package demo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonTypeInfo;

@Entity
@Table(schema = "Core")
@Inheritance(strategy = InheritanceType.JOINED)
@JsonTypeInfo(use = com.fasterxml.jackson.annotation.JsonTypeInfo.Id.MINIMAL_CLASS, property = "clazz")
public abstract class Party extends BaseEntity {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	@JsonProperty
	private Integer id;
	
	@Column(length = 25)
	private String partyType;
	
	public Integer getId() { return id; }
	public String getPartyType() { return partyType; }
	
	public void setId(Integer id) { this.id = id; }

}
