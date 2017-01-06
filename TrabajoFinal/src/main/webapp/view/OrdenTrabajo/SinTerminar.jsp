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
</head>
<title>Ordenes Sin Finalizar</title>

<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=request.getContextPath()%>">High Performance Taller Mecanico</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li ><a href="<%=request.getContextPath()%>/">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/Empleado/">Lista Empleados</a></li>
					<li><a href="<%=request.getContextPath()%>/Propietario/">Lista Propietarios</a></li>
					<li><a href="<%=request.getContextPath()%>/Repuesto/">Lista Repuestos</a></li>
					<li class="active"><a href="<%=request.getContextPath()%>/OrdenTrabajo/">Lista Ordenes de Trabajo</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

<style type="text/css">
body {
	margin-top: 30px;
}
</style>
<body>
	<div class="container">
		<div class="page-header">
			<h1>Ordenes de Trabajo Sin Finalizar</h1>
		</div>
		<table class="table table-bordered">
			<thead>
				<tr class="danger">
					<th>ID</th>
					<th>Marca</th>
					<th>Modelo</th>
					<th>Fecha</th>
					<th>Detalle de Falla</th>
					<th>Estado</th>
					<th>Propietario</th>
					<th>Empleado</th>
					<th>Repuestos</th>
				</tr>
			
			</thead>
			<tbody>
				<c:if test="${!empty listaOrdenTrabajo}">
					<c:forEach items="${listaOrdenTrabajo}" var="orden">
						<tr>
							<td><c:out value="${orden.id}"></c:out></td>
							<td><c:out value="${orden.marca}"></c:out></td>
							<td><c:out value="${orden.modelo}"></c:out></td>
							<td><c:out value="${orden.fecha}"></c:out></td>
							<td><c:out value="${orden.detalle_Falla}"></c:out></td>
							<c:if test="${!orden.estado}">
								<td><c:out value="Sin Terminar"></c:out></td>
							</c:if>
												
							<td><c:out value="${orden.propietario.nombre} ${orden.propietario.apellido}"></c:out></td>
							<td><c:out value="${orden.empleado.nombre}"></c:out></td>
							<td><a href="<%=request.getContextPath()%>/OrdenRepuesto/SinFinalizar/${orden.id}" class="btn btn-primary">Utilizados</a></td>
							
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty listaOrdenTrabajo}">
					<tr>
						<td colspan="5">No hay datos disponibles por el momento</td>
					</tr>
				</c:if>
			</tbody>
		</table>
	<button type="button" class="btn btn-success" data-toggle="modal" data-target="#horasTrabajadas">Finalizar</button>
	<a class="btn btn-danger" href="<%=request.getContextPath()%>/OrdenTrabajo/">Volver</a>
	
</div>


<!-- Modal -->
<div id="horasTrabajadas" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Finalizando Orden De Trabajo - Ingrese Horas Trabajadas</h4>
      </div>
      <div class="modal-body">
        
      <form:form action="Finalizar" method="get" modelAttribute="ordenFinal" class="form-horizontal">
		
		<div class="form-group">
		<form:label class="control-label col-sm-4" path="id">Id de la Orden: </form:label>
		<div class="col-sm-6">
		<form:input path="id" />
		</div>
		</div>
		
		<div class="form-group">
		<form:label class="control-label col-sm-4" path="cantHoras">Horas Trabajadas: </form:label>
		<div class="col-sm-6">
		<form:input path="cantHoras" value="1"/>
		</div>
		</div>
		<br><br><br>
      
      <div class="modal-footer">
      	<button type="submit" class="btn btn-default"> Aceptar</button> 
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
      </div>
      </form:form>
    </div>
	
	</div>
  </div>
</div>















<div class="footer-margin">

	<nav class="navbar navbar-default navbar-fixed-bottom ">
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
</div>
<script src="<%=request.getContextPath()%>/resources/js/jquery224.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>

</body>
</html>