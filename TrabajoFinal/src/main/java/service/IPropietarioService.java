package service;

import java.util.List;

import model.Propietario;

public interface IPropietarioService {

	/*R*/
	public Propietario getPropietario(long dni);

	public List<Propietario> listPropietario();
	
	public boolean existPropietario(long dni);
	
	/* CUD */
	public void addPropietario(Propietario propietario);
	
	public void updatePropietario(Propietario propietario);
	
	public void removePropietario(long dni);
}
