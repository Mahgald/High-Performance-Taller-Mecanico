package data;

import java.util.List;

import model.Repuesto;

public interface IRepuestoDAO {

	/*R*/
	public Repuesto getRepuesto(long id);

	public List<Repuesto> listRepuesto();
	
	/* CUD */
		
	public void updateRepuesto(Repuesto repuesto);
	
}
