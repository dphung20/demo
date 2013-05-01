package demo.service;

import demo.domain.Organization;

public interface OrganizationService<T extends Organization> extends BaseService<T, Integer> {

	T findByCode(String code);
	
	String toJsonWithChildOrganization(T entity);

	String toJsonWithChildFacility(T entity);
}
