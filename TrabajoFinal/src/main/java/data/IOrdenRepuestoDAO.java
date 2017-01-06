package data;

import java.util.List;

import model.OrdenRepuesto;

public interface IOrdenRepuestoDAO {

	/*R*/
	public OrdenRepuesto getOrdenRepuesto(long id);

	public List<OrdenRepuesto> listOrdenRepuesto();
	
	/* CUD */
	public void addOrdenRepuesto(OrdenRepuesto ordenRepuesto);
	
	public void updateOrdenRepuesto(OrdenRepuesto ordenRepuesto);
	
	public void removeOrdenRepuesto(long id);
}
