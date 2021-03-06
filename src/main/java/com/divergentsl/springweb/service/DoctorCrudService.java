package com.divergentsl.springweb.service;

import java.util.List;

import com.divergentsl.springweb.entity.Doctor;

public interface DoctorCrudService {

	void create(Doctor doctor);

	List<Doctor> read();

	boolean delete(int deleteid);

	boolean update(int updateid, String name, String username, String password, String speciality, String contact,
			int fees);

	Doctor findById(long id);
}
