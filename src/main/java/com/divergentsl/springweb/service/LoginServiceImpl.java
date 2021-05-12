package com.divergentsl.springweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.divergentsl.springweb.dao.LogInDao;
import com.divergentsl.springweb.entity.Admin;
@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LogInDao logInDao;

	@Override
	public List<Admin> adminRead() {
		return logInDao.adminRead();
	}

}
