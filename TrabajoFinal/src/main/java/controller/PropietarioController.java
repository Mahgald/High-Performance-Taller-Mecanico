package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.OrdenDeTrabajo;
import model.Propietario;
import service.IEmpleadoService;
import service.IOrdenDeTrabajoService;
import service.IPropietarioService;

@Controller
@RequestMapping("Propietario")
public class PropietarioController {

	@Autowired
	IPropietarioService propietarioService;
	
	@Autowired
	IOrdenDeTrabajoService ordenService;
	
	@Autowired
	IEmpleadoService empleadoService;
	
	
	@RequestMapping("/")
	public ModelAndView Lista(){
		List<Propietario> listaProp = propietarioService.listPropietario();
		return new ModelAndView("Propietario/ListaPropietario","listaPropietarios", listaProp);
	}
	
	@RequestMapping(path="BuscarPropietario", method=RequestMethod.GET)
	public ModelAndView buscarPropietario(@ModelAttribute("propietario")Propietario prop){
		
		try {
			if(propietarioService.existPropietario(prop.getDni())){
				ModelAndView m = new ModelAndView("/OrdenTrabajo/NuevaOrden");
				
				prop = propietarioService.getPropietario(prop.getDni());
				OrdenDeTrabajo ordenNueva = new OrdenDeTrabajo();
				ordenNueva.setPropietario(prop);
				
				m.addObject("ordenNueva", ordenNueva);
				m.addObject("listaEmpleados", empleadoService.listEmpleado());
				
				return m;
			}
		}catch(org.hibernate.ObjectNotFoundException er){
			prop = null;
		}
		
		return new ModelAndView("/Propietario/NuevoPropietario", "propietario", new Propietario());
	}
		
	@RequestMapping(path="NuevoPropietario", method=RequestMethod.POST)
	public ModelAndView nuevoPropietario(@ModelAttribute("propietario")Propietario prop){
		ModelAndView m = new ModelAndView("/OrdenTrabajo/NuevaOrden");
		propietarioService.addPropietario(prop);
		
		OrdenDeTrabajo ordenNueva = new OrdenDeTrabajo();
		ordenNueva.setPropietario(prop);
		
		m.addObject("ordenNueva", ordenNueva);
		m.addObject("listaEmpleados", empleadoService.listEmpleado());
		
		return m;
		
	}
	
}
