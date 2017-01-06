package data;

import java.util.List;

import model.Propietario;

public interface IPropietarioDAO {
	
	/*R*/
	public Propietario getPropietario(long dni);

	public List<Propietario> listPropietario();
	
	/* CUD */
	public void addPropietario(Propietario propietario);
	
	public void updatePropietario(Propietario propietario);
	
	public void removePropietario(long dni);
}
