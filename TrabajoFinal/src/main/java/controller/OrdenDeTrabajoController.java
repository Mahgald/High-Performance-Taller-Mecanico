package controller;

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
import service.IEmpleadoService;
import service.IOrdenDeTrabajoService;
import service.IPropietarioService;

@Controller
@RequestMapping("OrdenTrabajo")
public class OrdenDeTrabajoController {

	@Autowired
	IOrdenRepuestoDAO ordenrepuestoDAO;
	
	@Autowired
	IOrdenDeTrabajoService ordenService;
	
	@Autowired
	IPropietarioService propietarioService;
	
	@Autowired
	IEmpleadoService empleadoService;
	
	
	@RequestMapping("/")
	public ModelAndView Lista(){
		ModelAndView m = new ModelAndView("OrdenTrabajo/ListaOrdenDeTrabajo");
		
		List<OrdenDeTrabajo> listaOrdenTrabajo = ordenService.listOrdenDeTrabajo();
		
		m.addObject("listaOrdenTrabajo",listaOrdenTrabajo);
		m.addObject("propietario", new Propietario());
		return m;
	}
	
	@RequestMapping("TrabajosSinTerminar")
	public ModelAndView ListaSinTerminar(){
		ModelAndView m = new ModelAndView("OrdenTrabajo/SinTerminar");
		
		List<OrdenDeTrabajo> listaOrdenTrabajo = ordenService.listNoTerminados();
		
		m.addObject("ordenFinal" , new OrdenDeTrabajo());
		m.addObject("listaOrdenTrabajo",listaOrdenTrabajo);
		m.addObject("propietario", new Propietario());
		return m;
	}
	
	@RequestMapping("TrabajosTerminados")
	public ModelAndView ListaTerminados(){
		ModelAndView m = new ModelAndView("OrdenTrabajo/Terminado");
		
		List<OrdenDeTrabajo> listaOrdenTrabajo = ordenService.listTerminados();
		
		m.addObject("listaOrdenTrabajo",listaOrdenTrabajo);
		m.addObject("propietario", new Propietario());
		return m;
	}
	
	
	@RequestMapping(path="NuevaOrden", method=RequestMethod.POST)
	public String nuevaOrdenTrabajo(@ModelAttribute("ordenTrabajo")OrdenDeTrabajo orden){
		Propietario p = propietarioService.getPropietario(orden.getPropietario().getDni());
		orden.setPropietario(propietarioService.getPropietario(orden.getPropietario().getDni()));
		p.getListaOrdenDeTrabajo().add(orden);
		ordenService.addOrdenDeTrabajo(orden);
		propietarioService.updatePropietario(p);
				
		return "redirect:/OrdenTrabajo/";
		
	}
		
	@RequestMapping(path="Finalizar", method=RequestMethod.GET)
	public String finalizarOrden(@ModelAttribute("ordenFinal")OrdenDeTrabajo orden){
		
		OrdenDeTrabajo ordenFinal = ordenService.getOrdenDeTrabajo(orden.getId());
		ordenFinal.setCantHoras(orden.getCantHoras());
		ordenFinal.setEstado(true);
		
		ordenService.updateOrdenDeTrabajo(ordenFinal);
	
				
		return "redirect:/OrdenTrabajo/TrabajosTerminados";
		
	}
	
	
	
}
