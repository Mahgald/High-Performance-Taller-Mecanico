package data;

import java.util.List;

import model.Empleado;

public interface IEmpleadoDAO {

	/*R*/
	public Empleado getEmpleado(long id);

	public List<Empleado> listEmpleado();
	
	/* CUD */
	public void addEmpleado(Empleado empleado);
	
	public void updateEmpleado(Empleado empleado);
	
	public void removeEmpleado(long id);
}
