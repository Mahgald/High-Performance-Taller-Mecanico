(function(){

	var formularioSinTerminar = document.getElementById('formularioSinTerminar'),
	idOrden=formularioSinTerminar.idOrden,
	cantHoras=formularioSinTerminar.cantHoras,
	error= document.getElementById('error');

	idOrden.required=true;
	cantHoras.required=true;
	
	function validarIdOrden(e){
		if(idOrden.value=='0' || idOrden.value==null){
			console.log('Por favor seleccione una orden de trabajo valida');
			error.style.display='block';
			error.innerHTML += '<li>Por favor una orden de trabajo valida</li>';
			e.preventDefault();
		}else{
			console.log('Orden de trabajo valida');
			error.style.display='none';
		}
	}
	function validarCantHoras(e){
		if(!(/^\d{1,2}$/.test(cantHoras.value)) || cantHoras.value=='00' || cantHoras.value=='0'){
			console.log('Por favor seleccione una cantidad valida de horas de trabajo');
			error.style.display='block';
			error.innerHTML += '<li>Por favor seleccione una cantidad valida de horas de trabajo</li>';
			e.preventDefault();
		}else if (idOrden.value=='0' || idOrden.value==null){
			error.style.display = 'block';
		}else{
			console.log('Horas validas');
			error.style.display = 'none';
		}
	}

	function validar(e){
		error.innerHTML='';

		validarIdOrden(e);
		validarCantHoras(e);
	
	}
	
	formularioSinTerminar.addEventListener('submit', validar);

}());
/**
 * 
 */