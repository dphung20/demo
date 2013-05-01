package demo.service;

import java.io.StringWriter;

import javax.xml.bind.DataBindingException;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;

import demo.domain.Organization;


@Service
public abstract class OrganizationServiceImpl<T extends Organization> extends BaseServiceImpl<T, Integer> implements OrganizationService<T> {
	
	@Override
	public String toJsonWithChildOrganization(T entity) {
		try {
			StringWriter sw = new StringWriter();
			
			JsonFactory factory = new JsonFactory();
			JsonGenerator json = factory.createJsonGenerator(sw);
			json.writeStartObject();
			json.writeStringField("clazz", "." + entity.getClass().getSimpleName());
			json.writeStringField("id", String.valueOf(entity.getId()));
			json.writeStringField("name", entity.getName());

			json.writeFieldName("childOrganization");
			json.writeStartArray();
			
			for(Organization item : entity.getChildOrganization()) {
				json.writeStartObject();
				json.writeStringField("clazz", "." + item.getClass().getSimpleName());
				json.writeStringField("id", String.valueOf(item.getId()));
				json.writeStringField("name", item.getName());
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
	
	@Override
	public String toJsonWithChildFacility(T entity) {
		try {
			StringWriter sw = new StringWriter();
			
			JsonFactory factory = new JsonFactory();
			JsonGenerator json = factory.createJsonGenerator(sw);
			json.writeStartObject();
			json.writeStringField("clazz", "." + entity.getClass().getSimpleName());
			json.writeStringField("id", String.valueOf(entity.getId()));
			json.writeStringField("name", entity.getName());

			json.writeFieldName("childFacility");
			json.writeStartArray();
			
			for(Organization item : entity.getChildFacility()) {
				json.writeStartObject();
				json.writeStringField("clazz", "." + item.getClass().getSimpleName());
				json.writeStringField("id", String.valueOf(item.getId()));
				json.writeStringField("name", item.getName());
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
