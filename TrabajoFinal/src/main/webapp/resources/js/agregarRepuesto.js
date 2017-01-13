(function(){

	var formularioRepuesto = document.getElementById('formularioRepuesto'),
	repuesto=formularioRepuesto.repuesto,
	cantidad=formularioRepuesto.cantidad,
	error= document.getElementById('error');

	repuesto.required=true;
	cantidad.required=true;
	
	function validarRepuesto(e){
		if(repuesto.value=='0' || repuesto.value==null){
			console.log('Por favor seleccione un repuesto valido');
			error.style.display='block';
			error.innerHTML += '<li>Por favor seleccione un repuesto valido</li>';
			e.preventDefault();
		}else{
			console.log('Repuesto valido');
			error.style.display='none';
		}
	}
	function validarCantidad(e){
		if(!(/^\d{1,2}$/.test(cantidad.value)) || cantidad.value=='00' || cantidad.value=='0'){
			console.log('Por favor seleccione una cantidad valida de repuestos');
			error.style.display='block';
			error.innerHTML += '<li>Por favor seleccione una cantidad valida de repuestos</li>';
			e.preventDefault();
		}else if (repuesto.value=='0' || repuesto.value==null){
			error.style.display = 'block';
		}else{
			console.log('Cantidad valida');
			error.style.display = 'none';
		}
	}

	function validar(e){
		error.innerHTML='';

		validarRepuesto(e);
		validarCantidad(e);
	
	}
	
	formularioRepuesto.addEventListener('submit', validar);

}());
