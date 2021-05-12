package com.divergentsl.springweb.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.divergentsl.springweb.entity.Admin;
@Repository
public class LoginDaoImpl implements LogInDao {
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Admin> adminRead() {
		CriteriaQuery<Admin> criteriaQuery = em.getCriteriaBuilder().createQuery(Admin.class);
		@SuppressWarnings("unused")
		Root<Admin> root = criteriaQuery.from(Admin.class);
		return em.createQuery(criteriaQuery).getResultList();
	}
}
