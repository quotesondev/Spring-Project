package com.jsp.mvc.vms.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import com.jsp.mvc.vms.entity.Vehicle;

@Repository
public class VehicleRepository {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql-config");
	public void saveVehicle(Vehicle vehicle) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(vehicle);
		et.commit();
		em.close();
	}
	
	
	public List<Vehicle> findAll() {
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("FROM Vehicle", Vehicle.class);
		List<Vehicle> vehicles = query.getResultList();
		em.close();
		return vehicles;
	}


	public Vehicle updateVehicle(int id) {
		EntityManager em = emf.createEntityManager();
		Vehicle vehicle = em.find(Vehicle.class, id);
		return vehicle;
	}


	public void vehicleUpdate(Vehicle vehicle) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(vehicle);
		et.commit();
		em.close();
		
	}


	public void deleteVehicle(int id) {
		EntityManager em = emf.createEntityManager();
		Vehicle managedVehicle = em.find(Vehicle.class,id);
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.remove(managedVehicle);
		et.commit();
		
		em.close();
		
	}





}
