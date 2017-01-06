package data;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import model.OrdenRepuesto;

public class OrdenRepuestoDAO implements IOrdenRepuestoDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public OrdenRepuesto getOrdenRepuesto(long id) {
		Session session = sessionFactory.openSession();
		OrdenRepuesto ordenRepuesto = (OrdenRepuesto) session.load(OrdenRepuesto.class, id);
		session.close();
		return ordenRepuesto;
	}

	public List<OrdenRepuesto> listOrdenRepuesto() {
		Session session = sessionFactory.openSession();
		List<OrdenRepuesto> listaOrdenRepuesto= session.createQuery("from OrdenTrabajo").list();
		session.close();
		return listaOrdenRepuesto;
	}

	@Transactional
	public void addOrdenRepuesto(OrdenRepuesto ordenRepuesto) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(ordenRepuesto);
		tx.commit();
		session.close();
	}
	
	@Transactional
	public void updateOrdenRepuesto(OrdenRepuesto ordenRepuesto) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(ordenRepuesto);
		tx.commit();
		session.close();
	}
	
	@Transactional
	public void removeOrdenRepuesto(long id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		OrdenRepuesto ordenRepuesto = (OrdenRepuesto) session.load(OrdenRepuesto.class, id);
		session.update(ordenRepuesto);
		tx.commit();
		session.close();
	}

}
