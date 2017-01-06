package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import data.IOrdenDeTrabajoDAO;
import model.OrdenDeTrabajo;

public class OrdenDeTrabajoService implements IOrdenDeTrabajoService {

	@Autowired
	IOrdenDeTrabajoDAO ordentrabajoDAO;
	
	public OrdenDeTrabajo getOrdenDeTrabajo(long id) {
		return ordentrabajoDAO.getOrdenDeTrabajo(id);
	}

	public List<OrdenDeTrabajo> listOrdenDeTrabajo() {
		return ordentrabajoDAO.listOrdenDeTrabajo();
	}

	public List<OrdenDeTrabajo> listTerminados() {
		return ordentrabajoDAO.listaTerminados();
	}

	public List<OrdenDeTrabajo> listNoTerminados() {
		return ordentrabajoDAO.listaNoTerminados();
	}
	
	public void addOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo) {
		ordentrabajoDAO.addOrdenDeTrabajo(ordenDeTrabajo);
	}

	public void updateOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo) {
		ordentrabajoDAO.updateOrdenDeTrabajo(ordenDeTrabajo);
	}

	public void removeOrdenDeTrabajo(long id) {
		ordentrabajoDAO.removeOrdenDeTrabajo(id);

	}

	

}
