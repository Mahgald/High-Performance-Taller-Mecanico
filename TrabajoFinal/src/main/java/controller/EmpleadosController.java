package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import model.Empleado;
import service.IEmpleadoService;

@Controller
@RequestMapping("Empleado")
public class EmpleadosController {

	@Autowired
	IEmpleadoService empleadoService;
	
	
	@RequestMapping("/")
	public ModelAndView Lista(){
		List<Empleado> listaEmp = empleadoService.listEmpleado();
		return new ModelAndView("Empleado/ListaEmpleados","listaEmpleados", listaEmp);
	}
	

}
