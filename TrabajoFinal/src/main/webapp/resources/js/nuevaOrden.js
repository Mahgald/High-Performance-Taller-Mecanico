(function(){

	var formularioOrden = document.getElementById('formularioOrden'),
	marca=formularioOrden.marca,
	modelo=formularioOrden.modelo,
	patente=formularioOrden.patente,
	fecha=formularioOrden.fecha,
	falla=formularioOrden.falla,
	empleado=formularioOrden.empleado,
	error= document.getElementById('error');

	
	marca.required=true;
	modelo.required=true;
	patente.required=true;
	fecha.required=true;
	falla.required=true;
	empleado.required=true;

	
	

	function validarMarca(e){
		if((/^\s+|\s+$/.test(marca.value))){
			console.log('Por favor ingrese una marca valida');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un marca valida</li>';
			e.preventDefault();
		}else{
			console.log('Marca valido');
			error.style.display='none';
		}
	}
	function validarModelo(e){
		if((/^\s+|\s+$/.test(modelo.value))){
			console.log('Por favor ingrese una modelo valido');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un modelo valido</li>';
			e.preventDefault();
		}else{
			console.log('Modelo valido');
			error.style.display='none';
		}
	}
	
	function validarPatente(e){
		if(!(/[A-Z]{3}\s[0-9]{3}$/.test(patente.value))){
			console.log('Por favor ingrese una patente valida');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un patente valida</li>';
			e.preventDefault();
		}else{
			console.log('Patente valido');
			error.style.display='none';
		}
	}
	
	function validarFalla(e){
		if((/^\s+|\s+$/.test(falla.value))){
			console.log('Por favor ingrese una falla valida');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un falla valida</li>';
			e.preventDefault();
		}else{
			console.log('Falla valido');
			error.style.display='none';
		}
	}
	
	function validarFecha(e){
		
		if(!/^20[17-99]{2}-[01-12]{2}-[01-31]{2}$/.test(fecha.value)){
			console.log('Por favor ingrese una fecha valida');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un fecha valida</li>';
			e.preventDefault();
		}else{
			console.log('Fecha valida');
			error.style.display='none';
		}
	}
	
	function validarEmpleado(e){
		if(empleado.value=='0' || empleado.value==null){
			console.log('Por favor seleccione un empleado valido');
			error.style.display='block';
			error.innerHTML += '<li>Por favor seleccione un empleado valido</li>';
			e.preventDefault();
		}else if ((/^\s+|\s+$/.test(marca.value)) || marca.value == null || (/^\s+|\s+$/.test(modelo.value)) || modelo.value == null || !(/[A-Z]{3}\s[0-9]{3}$/.test(patente.value)) || patente.value == null || (/^\s+|\s+$/.test(falla.value)) || falla.value == null || !/^20[17-99]{2}-[01-12]{2}-[01-31]{2}$/.test(fecha.value) || fecha.value == null){
			error.style.display = 'block';
		}else{
			console.log('Empleado valido');
			error.style.display = 'none';
		}
	}

	function validar(e){
		error.innerHTML='';

		validarMarca(e);
		validarModelo(e);
		validarPatente(e);
		validarFecha(e);
		validarFalla(e);
		validarEmpleado(e);
	}
	
	formularioOrden.addEventListener('submit', validar);

}());
