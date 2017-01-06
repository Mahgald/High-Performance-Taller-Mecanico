package data;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import model.OrdenDeTrabajo;

public class OrdenDeTrabajoDAO implements IOrdenDeTrabajoDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public OrdenDeTrabajo getOrdenDeTrabajo(long id) {
		Session session = sessionFactory.openSession();
		OrdenDeTrabajo ordenDeTrabajo = (OrdenDeTrabajo) session.load(OrdenDeTrabajo.class, id);
		session.close();
		return ordenDeTrabajo;
	}

	public List<OrdenDeTrabajo> listOrdenDeTrabajo() {
		Session session = sessionFactory.openSession();
		List<OrdenDeTrabajo> listaOrdenDeTrabajo = session.createQuery("from OrdenDeTrabajo order by fecha").list();
		session.close();
		return listaOrdenDeTrabajo;
	}

	public List<OrdenDeTrabajo> listaTerminados() {
		Session session = sessionFactory.openSession();
		List<OrdenDeTrabajo> listaOrdenDeTrabajo = session.createQuery("from OrdenDeTrabajo where estado = 1 order by fecha").list();
		session.close();
		return listaOrdenDeTrabajo;
	}

	public List<OrdenDeTrabajo> listaNoTerminados() {
		Session session = sessionFactory.openSession();
		List<OrdenDeTrabajo> listaOrdenDeTrabajo = session.createQuery("from OrdenDeTrabajo where estado = 0 order by fecha").list();
		session.close();
		return listaOrdenDeTrabajo;
	}
	
	@Transactional
	public void addOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(ordenDeTrabajo);
		tx.commit();
		session.close();

	}

	@Transactional
	public void updateOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(ordenDeTrabajo);
		tx.commit();
		session.close();

	}

	@Transactional
	public void removeOrdenDeTrabajo(long id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		OrdenDeTrabajo ordenDeTrabajo = (OrdenDeTrabajo) session.load(OrdenDeTrabajo.class, id);
		session.delete(ordenDeTrabajo);
		tx.commit();
		session.close();

	}

	

}
