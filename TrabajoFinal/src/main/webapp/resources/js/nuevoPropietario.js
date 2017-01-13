(function(){

	var formularioPropietario = document.getElementById('formularioPropietario'),
	dni=formularioPropietario.dni,
	nombre=formularioPropietario.nombre,
	apellido=formularioPropietario.apellido,
	direccion=formularioPropietario.direccion,
	telefono=formularioPropietario.telefono;

	nombre.required=true;
	apellido.required=true;
	direccion.required=true;
	telefono.required=true;

	error= document.getElementById('error');
	dni.value=localStorage.dni;
	dni.readOnly = true;

	function validarNombre(e){
		if((/^\s+|\s+$/.test(nombre.value))){
			console.log('Por favor ingrese un nombre valido');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un nombre valido</li>';
			e.preventDefault();
		}else{
			console.log('Nombre valido');
			error.style.display='none';
		}
	}
	function validarApellido(e){
		if(/^\s+|\s+$/.test(apellido.value)){
			console.log('Por favor ingrese un apellido valido');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un apellido valido</li>';
			e.preventDefault();
		}else{
			console.log('Apellido valido');
			error.style.display='none';
		}
	}
	function validarDireccion(e){
		if(/^\s+|\s+$/.test(direccion.value)){
			console.log('Por favor ingrese una direccion valida');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese una direccion valida</li>';
			e.preventDefault();
		}else{
			console.log('Direccion valida');
			error.style.display='none';
		}
	}
	function validarTelefono(e){
		if(!/^\d{2,4}\s\d{6,8}$/.test(telefono.value)){
			console.log('Por favor ingrese un telefono valido');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un telefono valido</li>';
			e.preventDefault();
		}else if (/^\s+|\s+$/.test(nombre.value) || nombre.value == null || /^\s+|\s+$/.test(apellido.value) || apellido.value == null || /^\s+|\s+$/.test(direccion.value) || direccion.value == null){
			error.style.display = 'block';
		}else{
			console.log('Telefono valido');
			error.style.display = 'none';
		}
	}

	function validar(e){
		error.innerHTML='';

		validarNombre(e);
		validarApellido(e);
		validarDireccion(e);
		validarTelefono(e);
	}

	formularioPropietario.addEventListener('submit', validar);

}());
