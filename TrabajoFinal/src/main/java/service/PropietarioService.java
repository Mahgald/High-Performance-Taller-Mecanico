package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import data.IPropietarioDAO;
import model.Propietario;

public class PropietarioService implements IPropietarioService {

	@Autowired
	IPropietarioDAO propietarioDAO;
	
	public Propietario getPropietario(long dni) {
		return propietarioDAO.getPropietario(dni);
	}

	public List<Propietario> listPropietario() {
		return propietarioDAO.listPropietario();
	}

	public boolean existPropietario(long dni) {
		if(propietarioDAO.getPropietario(dni) != null){
			return true;
		}else{
			return false;
		}
	}

	public void addPropietario(Propietario propietario) {
		propietarioDAO.addPropietario(propietario);
	}

	public void updatePropietario(Propietario propietario) {
		propietarioDAO.updatePropietario(propietario);
	}

	public void removePropietario(long dni) {
		propietarioDAO.removePropietario(dni);
	}

}
