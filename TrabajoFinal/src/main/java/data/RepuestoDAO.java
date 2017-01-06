package data;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import model.Repuesto;

public class RepuestoDAO implements IRepuestoDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public Repuesto getRepuesto(long id) {
		Session session = sessionFactory.openSession();
		Repuesto repuesto = (Repuesto) session.load(Repuesto.class, id);
		session.close();
	
		return repuesto;
	}

	
	public List<Repuesto> listRepuesto() {
		Session session = sessionFactory.openSession();
		List<Repuesto> listaRepuestos = session.createQuery("from Repuesto").list();
		session.close();
		return listaRepuestos;
	}

	@Transactional
	public void updateRepuesto(Repuesto repuesto) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(repuesto);
		tx.commit();
		session.close();
	}

}
