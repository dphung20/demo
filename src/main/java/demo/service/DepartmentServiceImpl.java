package demo.service;

import java.io.StringWriter;
import java.util.List;

import javax.xml.bind.DataBindingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;

import demo.data.DepartmentRepository;
import demo.domain.College;
import demo.domain.Department;
import demo.domain.Person;


@Service
@Transactional
public class DepartmentServiceImpl extends OrganizationServiceImpl<Department> implements DepartmentService {
	
	@Autowired private DepartmentRepository repository;
	
	public DepartmentRepository getDepartmentRepository() { return this.repository; }
	public void setDepartmentRepository(DepartmentRepository repository) { this.repository = repository; }
	
	@Override
	public Department find(Integer id) {
		return repository.findOne(id);
	}
	
	@Override
	public List<Department> findByCollege(College college) {
		return repository.findByCollege(college);
	}
	
	@Override
	public Department findByCode(String code) {
		return null;
	}
	
	@Override
	public Department save(Department entity) {
		return repository.save(entity);
	}
	
	@Override
	public void delete(Integer id) {
		repository.delete(id);
	}
	
	@Override
	public String toJsonWithEmployee(Department department) {
		try {
			StringWriter sw = new StringWriter();
			
			JsonFactory factory = new JsonFactory();
			JsonGenerator json = factory.createJsonGenerator(sw);
			json.writeStartObject();
			json.writeStringField("clazz", "." + department.getClass().getSimpleName());
			json.writeStringField("id", String.valueOf(department.getId()));
			json.writeStringField("name", department.getName());

			json.writeFieldName("childOrganization");
			json.writeStartArray();
			
			for(Person item : department.getEmployees()) {
				json.writeStartObject();
				json.writeStringField("clazz", "." + item.getClass().getSimpleName());
				json.writeStringField("id", String.valueOf(item.getId()));
				json.writeStringField("firstName", item.getFirstName());
				json.writeStringField("lastName", item.getLastName());
				json.writeEndObject();
			}
			
			json.writeEndArray();
			json.writeEndObject();
			json.close();
			
			return sw.toString();
		} catch(Exception e) {
			throw new DataBindingException(e);
		}
	}
	
}
