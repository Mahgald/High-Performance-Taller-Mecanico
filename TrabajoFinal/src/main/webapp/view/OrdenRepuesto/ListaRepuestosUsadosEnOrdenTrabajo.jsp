<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Import de JSTL para utilizar los tags de Java  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/flatly.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-social.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styles.css">
<title>Detalle Orden</title>
</head>
<!-- Bootstrap core CSS -->


</style>
<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=request.getContextPath()%>">High Performance Taller Mecanico</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<%=request.getContextPath()%>/">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/Empleado/">Lista Empleados</a></li>
					<li><a href="<%=request.getContextPath()%>/Propietario/">Lista Propietarios</a></li>
					<li><a href="<%=request.getContextPath()%>/Repuesto/">Lista Repuestos</a></li>
					<li><a href="<%=request.getContextPath()%>/OrdenTrabajo/">Lista Ordenes de Trabajo</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
<style type="text/css">
body{
	margin-top: 35px;
}
</style>
	<div class="container">
		<div class="page-header">
			<h1>Detalle de la Orden</h1>
		</div>
		
		<table class="table table-bordered">
			<h4>Datos del Propietario</h4>
			<thead>
				<tr class="danger">
					<th>DNI</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Direccion</th>
					<th>Telefono</th>
				</tr>

			</thead>
			<tbody>
				<c:out value=""></c:out>
					<tr>
						<td><c:out value="${ordenTrabajo.propietario.dni}"></c:out></td>
						<td><c:out value="${ordenTrabajo.propietario.nombre}"></c:out></td>
						<td><c:out value="${ordenTrabajo.propietario.apellido}"></c:out></td>
						<td><c:out value="${ordenTrabajo.propietario.direccion}"></c:out></td>
						<td><c:out value="${ordenTrabajo.propietario.telefono}"></c:out></td>
					</tr>
			</tbody>
		</table>
		
		<table class="table table-bordered">
			<h4>Datos del Empleado</h4>
			<thead>
				<tr class="danger">
					<th>ID</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Telefono</th>
				</tr>

			</thead>
			<tbody>
				<c:out value=""></c:out>
					<tr>
						<td><c:out value="${ordenTrabajo.empleado.id}"></c:out></td>
						<td><c:out value="${ordenTrabajo.empleado.nombre}"></c:out></td>
						<td><c:out value="${ordenTrabajo.empleado.apellido}"></c:out></td>
						<td><c:out value="${ordenTrabajo.empleado.telefono}"></c:out></td>
						
					</tr>
			</tbody>
		</table>
		
		
		<table class="table table-bordered">
			<h4>Datos del Vehiculo</h4>
			<thead>
				<tr class="danger">
					<th>Marca</th>
					<th>Modelo</th>
					<th>Patente</th>
					<th>Detalle de la Falla</th>
				</tr>

			</thead>
			<tbody>
				<c:out value=""></c:out>
					<tr>
						<td><c:out value="${ordenTrabajo.marca}"></c:out></td>
						<td><c:out value="${ordenTrabajo.modelo}"></c:out></td>
						<td><c:out value="${ordenTrabajo.patente}"></c:out></td>
						<td><c:out value="${ordenTrabajo.detalle_Falla}"></c:out></td>
					</tr>
			</tbody>
		</table>
		
		<table class="table table-bordered">
			<h4>Facturacion</h4>
			<thead>
				<tr class="danger">
					<th>Hs Trabajo</th>
					<th>Valor de Hr</th>
					<th>Total por Hs</th>
					<th>Total por Repuestos</th>
					<th>Total a Pagar</th>
				</tr>

			</thead>
			<tbody>
				<c:out value=""></c:out>
					<tr>
						<td><c:out value="${ordenTrabajo.cantHoras}"></c:out></td>
						<td><c:out value="$ 150"></c:out></td>
						<td><c:out value="${ordenTrabajo.cantHoras * 150}"></c:out></td>
						<td><c:out value="${total}"></c:out></td>
						<td><c:out value="${total + ordenTrabajo.cantHoras * 150}"></c:out></td>
						
						
					</tr>
			</tbody>
		</table>
		<button type="button" class="btn btn-info" data-toggle="modal" data-target="#repuestosUsados">Repuestos Utilizados</button>
			
			
			
			<div id="repuestosUsados" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Repuestos Utilizados</h4>
      </div>
      <div class="modal-body">
        	<table class="table table-bordered">
			<thead>
				<tr class="info">
				<th>Nombre</th>
					<th>Cantidad</th>
					<th>Precio</th>
					<th>SubTotal</th>
				</tr>

			</thead>
     
     		<tbody>
				<c:if test="${!empty listaRepuestosUsados}">
					<c:forEach items="${listaRepuestosUsados}" var="OrdenRepuesto">
						<tr>
							<td><c:out value="${OrdenRepuesto.repuesto.nombre}"></c:out></td>
							<td><c:out value="${OrdenRepuesto.cantRepuestos}"></c:out></td>
							<td><c:out value="${OrdenRepuesto.repuesto.precio}"></c:out></td>
							<td><c:out value="${OrdenRepuesto.repuesto.precio * OrdenRepuesto.cantRepuestos}"></c:out></td>
							<c:if test="${!empty listaRepuestos}">
								<c:forEach items="${listaRepuestos}" var="Repuesto">
									<tr>
										<td><c:out value="${repuesto.nombre}"></c:out></td>
										<td><c:out value="${repuesto.precio}"></c:out></td>
										<td><c:out value="${repuesto.precio * OrdenRepuesto.cantRepuestos}"></c:out></td>
										
										
									</tr>
								</c:forEach>
							</c:if>

						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty listaRepuestosUsados}">
					<tr>
						<td colspan="5">No hay datos disponibles por el momento</td>
					</tr>
				</c:if>
			</tbody>
		</table>
     
      
      <div class="modal-footer">
     
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
     
    </div>
	
	</div>
  </div>
</div>
			
	<br><br><br><br><br>		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			

	</div>
		<nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Proyecto Final - Ricardo Surribas</a>
    </div>
    <div class="btn-group navbuttons">
    	<a href="https://www.Github.com/Mahgald" target="_blank" class="btn btn-sm btn-block btn-social btn-github"> <span class="fa fa-github"></span>GitHub</a>
    </div>	
    <div class="btn-group navbuttons">
    	<a href="https://ar.linkedin.com/in/ricardo-surribas" target="_blank" class="btn btn-sm btn-block btn-social btn-linkedin"> <span class="fa fa-linkedin"></span>Linkedin</a>
    </div>
  </div>
</nav>
	<script src="<%=request.getContextPath()%>/resources/js/jquery224.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
</body>
</html>