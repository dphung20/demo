package demo.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.google.common.base.Preconditions;

@Entity
@Table(schema = "Core")
public class College extends Organization {
	
	@Override
	public void addChildOrganization(Organization organization) {
		Preconditions.checkArgument(organization instanceof Department);
		super.addChildOrganization(organization);
	}

}