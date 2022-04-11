package com.configuration;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.Cars;

public class JavaConfigurationFle {

	public static void main(String[] args) {

		Configuration cfg = new Configuration();
		cfg.configure();
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();

//		Cars cars = new Cars();
//		cars.setCarId(9);
//		cars.setCarName("Shift");
//		cars.setMaxSpeed(280);
		// s.persist(cars);
		// int id = (Integer) s.save(cars);
		// s.update(cars);
		// s.saveOrUpdate(cars);
		// Cars cars = s.get(Cars.class, 9);
		Cars cars = s.load(Cars.class, 3);
		System.out.println(cars);
		Transaction t = s.beginTransaction();
		t.commit();
		System.out.println("Object fetch successfully....");
		s.close();
		sf.close();
	}

}
