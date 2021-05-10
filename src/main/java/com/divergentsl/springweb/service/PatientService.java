package com.divergentsl.springweb.service;

import java.util.List;

import com.divergentsl.springweb.entity.Patient;

public interface PatientService {
	void create(Patient patient);

	List<Patient> read();

	boolean delete(long id);

	Patient findById(long id);

	boolean update(int updateid, String name, String gender, int age, int weight, String contact, String address);
}
