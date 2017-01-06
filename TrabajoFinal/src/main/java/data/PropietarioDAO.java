package data;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import model.Propietario;

public class PropietarioDAO implements IPropietarioDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public Propietario getPropietario(long dni) {
		Session session = sessionFactory.openSession();
		Propietario propietario = (Propietario) session.load(Propietario.class, dni);
		session.close();
		return propietario;
	}

	public List<Propietario> listPropietario() {
		Session session = sessionFactory.openSession();
		List<Propietario> listaPropietario = session.createQuery("from Propietario").list();
		session.close();
		return listaPropietario;
	}

	@Transactional
	public void addPropietario(Propietario propietario) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(propietario);
		tx.commit();
		session.close();
	}

	@Transactional
	public void updatePropietario(Propietario propietario) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(propietario);
		tx.commit();
		session.close();		
	}

	@Transactional
	public void removePropietario(long dni) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Propietario propietario = (Propietario) session.load(Propietario.class, dni);
		session.delete(propietario);
		tx.commit();
		session.close();		
	}

	
}
