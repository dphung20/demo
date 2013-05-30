package demo.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(schema = "Core")
public class Organization extends Party {

	@Column(length = 255)
	@NotBlank
	@JsonProperty
	private String name;

	@Column(length = 25)
	protected String code;
	
	@ManyToOne
	private Organization parentOrganization;
	
	@ManyToOne
	private Organization parentFacility;

	@OneToMany(mappedBy = "parentOrganization", cascade = CascadeType.ALL, orphanRemoval = true)
	@OrderBy("name")
	private Set<Organization> childOrganization = new HashSet<Organization>();
	
	@OneToMany(mappedBy = "parentFacility", cascade = CascadeType.ALL, orphanRemoval = true)
	@OrderBy("name")
	private Set<Organization> childFacility = new HashSet<Organization>();
	
	// Properties
	public String getName() { return name; }
	public String getCode() { return code; }
	public Organization getParentOrganization() { return parentOrganization; }
	public Organization getParentFacility() { return parentFacility; }
	public Set<Organization> getChildOrganization() { return childOrganization; }
	public Set<Organization> getChildFacility() { return childFacility; }

	public void setName(String name) { this.name = name; }
	public void setCode(String code) { this.code = code; }
	public void setParentOrganization(Organization parentOrganization) { this.parentOrganization = parentOrganization; }
	public void setParentFacility(Organization parentFacility) { this.parentFacility = parentFacility; }
	public void setChildOrganization(Set<Organization> childOrganization) { this.childOrganization = childOrganization; }
	public void setChildFacility(Set<Organization> childFacility) { this.childFacility = childFacility; }
	
	/**
	 * Transient objects are not associated with an item already in storage. For
	 * instance, a Customer is transient if its Id is null.
	 * @return
	 */
	@Transient
	public boolean isNew() { return getId() == null; }
	
	public void addChildOrganization(Organization organization) {
		this.childOrganization.add(organization);
		organization.setParentOrganization(this);
	}
	
	public void addChildFacility(Organization organization) {
		this.childFacility.add(organization);
		organization.setParentFacility(this);
	}	
	
	@SuppressWarnings("unchecked")
	public <T> T getAncestorOrganization(Class<T> clazz) {
		if (clazz.equals(this.getClass())) {
			return (T) this;
		} else if (this.parentOrganization != null) {
			return this.parentOrganization.getAncestorOrganization(clazz);
		} else {
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public <T> T getAncestorFacility(Class<T> clazz) {
		if (clazz.equals(this.getClass())) {
			return (T) this;
		} else if (this.parentFacility != null) {
			return this.parentFacility.getAncestorFacility(clazz);
		} else {
			return null;
		}
	}
}
