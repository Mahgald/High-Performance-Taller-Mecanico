package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import data.IEmpleadoDAO;
import model.Empleado;

public class EmpleadoService implements IEmpleadoService {

	@Autowired
	IEmpleadoDAO empleadoDAO;
	
	public Empleado getEmpleado(long id) {
		return empleadoDAO.getEmpleado(id);
	}

	public List<Empleado> listEmpleado() {
		return empleadoDAO.listEmpleado();
	}

	public void addEmpleado(Empleado empleado) {
		empleadoDAO.addEmpleado(empleado);	
	}

	public void updateEmpleado(Empleado empleado) {
		empleadoDAO.updateEmpleado(empleado);
	}

	public void removeEmpleado(long id) {
		empleadoDAO.removeEmpleado(id);
	}

}
