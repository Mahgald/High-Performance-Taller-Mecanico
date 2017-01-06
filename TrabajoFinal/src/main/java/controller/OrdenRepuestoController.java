package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import data.IOrdenRepuestoDAO;
import model.OrdenDeTrabajo;
import model.OrdenRepuesto;
import model.Propietario;
import model.Repuesto;
import service.IOrdenDeTrabajoService;
import service.IRepuestoService;


@Controller
@RequestMapping("OrdenRepuesto")
public class OrdenRepuestoController {

	@Autowired
	IOrdenRepuestoDAO ordenRepuestoDAO;
	
	@Autowired
	IOrdenDeTrabajoService ordenService;
	
	@Autowired
	IRepuestoService repuestoService;
	
	@RequestMapping("SinFinalizar/{id}")
	public ModelAndView ListaSinTerminar(@PathVariable("id")String id){
		ModelAndView m = new ModelAndView("OrdenRepuesto/RepuestosUtilizados");
		OrdenDeTrabajo orden = new OrdenDeTrabajo();
		List<OrdenRepuesto> listaRepuestosUsados= new ArrayList<OrdenRepuesto>();
		try {
			orden = ordenService.getOrdenDeTrabajo(Long.parseLong(id));
			listaRepuestosUsados= orden.getListaOrdenRepuesto();
		}	catch(org.hibernate.ObjectNotFoundException er){
			orden = null;
		}
		OrdenRepuesto or = new OrdenRepuesto();
		or.setOrden(orden);
		
		m.addObject("ordenRepuesto",or );
		m.addObject("listaRepuestosUsados",listaRepuestosUsados);
		m.addObject("listaRepuestos",repuestoService.listRepuesto());		
		return m;
	}
	
	@RequestMapping(path="Agregar", method=RequestMethod.POST)
	public String AgregarRepuesto(@ModelAttribute("ordenRepuesto")OrdenRepuesto ordRep){
				
		try {
			OrdenDeTrabajo orden = ordenService.getOrdenDeTrabajo(ordRep.getOrden().getId());
			List<OrdenRepuesto> lista = orden.getListaOrdenRepuesto();
			lista.add(ordRep);
			if(repuestoService.hayStock(ordRep.getRepuesto(), ordRep.getCantRepuestos())){
				Repuesto r = repuestoService.getRepuesto(ordRep.getRepuesto().getId());
				r.setStock(r.getStock()-ordRep.getCantRepuestos());
				repuestoService.updateRepuesto(r);
			}else{
				Repuesto r = repuestoService.getRepuesto(ordRep.getRepuesto().getId());
				r.setStock(r.getStock() + 100);
				repuestoService.updateRepuesto(r);
				r.setStock(r.getStock()-ordRep.getCantRepuestos());
				repuestoService.updateRepuesto(r);
			}
			
			
			
			orden.setListaOrdenRepuesto(lista);
			ordRep.setOrden(orden);
			ordenService.updateOrdenDeTrabajo(orden);
			ordenRepuestoDAO.addOrdenRepuesto(ordRep);
		}	catch(org.hibernate.ObjectNotFoundException er){
			ordRep = null;
		}
		return "redirect:/OrdenRepuesto/SinFinalizar/"+ordRep.getOrden().getId();
	}
	
	
	@RequestMapping("Finalizado/{id}")
	public ModelAndView ListaTerminado(@PathVariable("id")String id){
		ModelAndView m = new ModelAndView("OrdenRepuesto/ListaRepuestosUsadosEnOrdenTrabajo");
		OrdenDeTrabajo orden = new OrdenDeTrabajo();
		float total=0;
		int cant=0;
		
		
		List<OrdenRepuesto> listaRepuestosUsados= new ArrayList<OrdenRepuesto>();
		try {
			orden = ordenService.getOrdenDeTrabajo(Long.parseLong(id));
			listaRepuestosUsados= orden.getListaOrdenRepuesto();
			cant= listaRepuestosUsados.size();
			for ( OrdenRepuesto ord : listaRepuestosUsados) {
				total += ord.getCantRepuestos()*ord.getRepuesto().getPrecio();
			}
		}	catch(org.hibernate.ObjectNotFoundException er){
			orden = null;
		}
		m.addObject("cantRepuestos", cant);
		m.addObject("total", total);
		m.addObject("ordenTrabajo", orden);
		m.addObject("listaRepuestosUsados",listaRepuestosUsados);
				
		return m;
	}
	
	
}
