package demo.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.google.common.base.Preconditions;

@Entity
@Table(schema = "Core")
public class Building extends Organization {
	
	@Override
	public void addChildFacility(Organization organization) {
		Preconditions.checkArgument(organization instanceof Floor);
		super.addChildFacility(organization);
	}
}
