package service;

import java.util.List;

import model.Repuesto;

public interface IRepuestoService {

	/*R*/
	public Repuesto getRepuesto(long id);

	public List<Repuesto> listRepuesto();
	
	public boolean hayStock(Repuesto repuesto,int cantidad);
	
	/* CUD */
		
	public void updateRepuesto(Repuesto repuesto);
}
