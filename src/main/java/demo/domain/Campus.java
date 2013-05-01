package demo.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.google.common.base.Preconditions;

@Entity
@Table(schema = "Core")
public class Campus extends Organization {
	
	@Override
	public void addChildOrganization(Organization organization) {
		Preconditions.checkArgument(organization instanceof College);
		super.addChildOrganization(organization);
	}
	
	@Override
	public void addChildFacility(Organization organization) {
		Preconditions.checkArgument(organization instanceof Building);
		super.addChildFacility(organization);
	}	
}
