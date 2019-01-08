package com.hbk.bloodrequest.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hbk.bloodrequest.model.Hospital;

@Repository("bloodDao")
public class BloodRequestDAOImpl implements BloodRequestDAO{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public Hospital doSignup(Hospital hospital) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.save(hospital);
//			session.getTransaction().commit();
			return hospital;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public Hospital doLogin(Hospital hospital) {
		Session session = sessionFactory.getCurrentSession();
		Hospital hospital2 = (Hospital)session.get(Hospital.class, hospital.getEmail());
		if (hospital2 == null || !hospital2.getPassword().equals(hospital.getPassword())) {
			
			return null;
		}
		return hospital2;
	}
}
