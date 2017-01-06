package service;

import java.util.List;

import model.OrdenDeTrabajo;

public interface IOrdenDeTrabajoService {

	/*R*/
	public OrdenDeTrabajo getOrdenDeTrabajo(long id);

	public List<OrdenDeTrabajo> listOrdenDeTrabajo();
	
	public List<OrdenDeTrabajo> listTerminados();
	
	public List<OrdenDeTrabajo> listNoTerminados();
	
	/* CUD */
	public void addOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo);
	
	public void updateOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo);
	
	public void removeOrdenDeTrabajo(long id);
}
