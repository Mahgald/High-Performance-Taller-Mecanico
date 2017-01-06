package data;

import java.util.List;

import model.OrdenDeTrabajo;

public interface IOrdenDeTrabajoDAO {
	
	/*R*/
	public OrdenDeTrabajo getOrdenDeTrabajo(long id);

	public List<OrdenDeTrabajo> listOrdenDeTrabajo();
	
	public List<OrdenDeTrabajo>	listaTerminados();
	
	public List<OrdenDeTrabajo> listaNoTerminados();
	
	/* CUD */
	public void addOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo);
	
	public void updateOrdenDeTrabajo(OrdenDeTrabajo ordenDeTrabajo);
	
	public void removeOrdenDeTrabajo(long id);
}
