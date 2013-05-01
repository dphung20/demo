package demo.service;

import java.io.Serializable;
import java.io.StringWriter;

import javax.xml.bind.DataBindingException;

import com.fasterxml.jackson.databind.ObjectMapper;

public abstract class BaseServiceImpl<T, ID extends Serializable> implements BaseService<T, ID> {
	
	public final ObjectMapper MAPPER = new ObjectMapper();
	
	@Override
	public String toJson(T item) {
		StringWriter sw = new StringWriter();
		try {
			MAPPER.writeValue(sw, item);
		} catch (Exception e) {
			throw new DataBindingException(e);
		}
		return sw.toString();
	}
}
