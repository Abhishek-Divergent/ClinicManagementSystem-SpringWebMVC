package com.divergentsl.springweb.dao;

import java.util.List;

public interface ApplicationDao<T> {

	void create(T object);

	List<T> read();

	void delete(T object);

	void update(T object);

	T findById(Long id);
}
