package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Repuesto;
import service.IRepuestoService;


@Controller
@RequestMapping("Repuesto")
public class RepuestoController {

	@Autowired
	IRepuestoService repuestoService;
	
	
	@RequestMapping("/")
	public ModelAndView Lista(){
		List<Repuesto> listaRep = repuestoService.listRepuesto();
		return new ModelAndView("Repuesto/ListaRepuestos","listaRepuestos", listaRep);
	}
	
}
