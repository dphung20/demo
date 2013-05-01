package demo.service;

import java.io.Serializable;

public interface BaseService<T, ID extends Serializable> {

	T find(ID id);

	T save(T entity);

	String toJson(T item);
}
