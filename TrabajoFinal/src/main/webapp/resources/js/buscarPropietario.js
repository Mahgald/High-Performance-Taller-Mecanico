(function(){
var formularioBusqueda = document.getElementById('formularioBusqueda'),
	dniBusqueda= formularioBusqueda.dni,
	error = document.getElementById('error');
	dniBusqueda.value='';
	dniBusqueda.required=true;
	
//	function dniValido(){
//		if(dniBusqueda.value=='00000000' || dniBusqueda.value=='11111111' || dniBusqueda.value=='22222222'|| dniBusqueda.value=='33333333'|| dniBusqueda.value=='44444444'
//			|| dniBusqueda.value=='55555555'|| dniBusqueda.value=='66666666'|| dniBusqueda.value=='77777777'|| dniBusqueda.value=='88888888'|| dniBusqueda.value=='99999999'){
//			return false;
//		}else{
//			return true;
//		}
//		
//	}
	
	function validarDni(e){
		error.innerHTML='';
		
		if(!(/^\d{8}$/.test(dniBusqueda.value)) || dniBusqueda.value=='00000000'){
			console.log('Por favor ingrese un dni valido');
			error.style.display='block';
			error.innerHTML += '<li>Por favor ingrese un dni valido</li>';
			e.preventDefault();
		
		}else{
			localStorage.dni=dniBusqueda.value;
			console.log('Dni valido');
			error.style.display='none';
		}

	}
	
	formularioBusqueda.addEventListener('submit', validarDni);
	
	
}());

	