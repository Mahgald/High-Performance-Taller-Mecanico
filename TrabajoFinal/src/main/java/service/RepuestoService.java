package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import data.IRepuestoDAO;
import model.Repuesto;

public class RepuestoService implements IRepuestoService {

	@Autowired
	IRepuestoDAO repuestoDAO;
	
	public Repuesto getRepuesto(long id) {
		return repuestoDAO.getRepuesto(id);
	}

	public List<Repuesto> listRepuesto() {
		return repuestoDAO.listRepuesto();
	}

	public void updateRepuesto(Repuesto repuesto) {
		repuestoDAO.updateRepuesto(repuesto);
	}

	public boolean hayStock(Repuesto repuesto, int cantidad) {
		if(repuestoDAO.getRepuesto(repuesto.getId()).getStock() >= cantidad){
			return true;
		}else{
			return false;
		}
		
	}

	
	

}
