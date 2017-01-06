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
<title>Repuetos Utilizados</title>
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
			<h1>Lista de Repuestos de la Orden</h1>
		</div>
		
		<table class="table table-bordered">
			<thead>
				<tr class="info">
					<th>ID Orden</th>
					<th>Falla</th>
					<th>Repuesto</th>
					<th>Cantidad</th>
									
				</tr>

			</thead>
			<tbody>
				<c:if test="${!empty listaRepuestosUsados}">
					<c:forEach items="${listaRepuestosUsados}" var="OrdenRepuesto">
						<tr>
							<td><c:out value="${OrdenRepuesto.orden.id}"></c:out></td>
							<td><c:out value="${OrdenRepuesto.orden.detalle_Falla}"></c:out></td>
							<td><c:out value="${OrdenRepuesto.repuesto.nombre}"></c:out></td>
							<td><c:out value="${OrdenRepuesto.cantRepuestos}"></c:out></td>
							

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
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarRepuesto">Agregar</button>
		<a class="btn btn-danger" href="<%=request.getContextPath()%>/OrdenTrabajo/TrabajosSinTerminar">Volver</a>
		

	</div>
	
	
	
	<div id="agregarRepuesto" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Agregar Repuesto a la Orden</h4>
      </div>
      <div class="modal-body">
        
      <form:form action="../Agregar" method="post" modelAttribute="ordenRepuesto"  class="form-horizontal">
	
		
		<form:hidden class="form-control" path="orden.id" />
		
		<div class="form-group">
				<form:label class="control-label col-sm-2" path="repuesto">Repuesto: </form:label>
				<div class="col-sm-6">
					<form:select class="form-control" path="repuesto.id">

						<form:option value="0">Seleccione Repuesto</form:option>

						<c:forEach items="${listaRepuestos}" var="repuesto">
							<form:option value="${repuesto.id}">
								<c:out value="${repuesto.nombre}"></c:out>
							</form:option>

						</c:forEach>
					</form:select>
				</div>
		</div>
		<div class="form-group">
				<form:label class="control-label col-sm-2" path="cantRepuestos">Cantidad: </form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="cantRepuestos" />
					<br>
				</div>
		</div>
         </div>
      <div class="modal-footer">
      	<button type="submit" class="btn btn-default"> Agregar</button> 
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
      </div>
      </form:form>
 
	
	</div>
  </div>
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