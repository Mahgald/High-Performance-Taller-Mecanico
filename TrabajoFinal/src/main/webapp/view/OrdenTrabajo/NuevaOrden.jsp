<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/flatly.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap-social.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/styles.css">
<title>Nueva Orden</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<%=request.getContextPath()%>">High
				Performance Taller Mecanico</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="<%=request.getContextPath()%>/">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/Empleado/">Lista
						Empleados</a></li>
				<li><a href="<%=request.getContextPath()%>/Propietario/">Lista
						Propietarios</a></li>
				<li><a href="<%=request.getContextPath()%>/Repuesto/">Lista
						Repuestos</a></li>
				<li class="active"><a
					href="<%=request.getContextPath()%>/OrdenTrabajo/">Lista
						Ordenes de Trabajo</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>
	<style type="text/css">
body {
	margin-top: 50px;
}
</style>
	<div class="col-md-8 col-md-offset-2">

		<h1>Nueva Orden de Trabajo</h1>
		<br>
		<br>

		<form:form action="../OrdenTrabajo/NuevaOrden" method="post"
			class="form-horizontal formulario" modelAttribute="ordenNueva"
			id="formularioOrden">
			<form:hidden path="propietario.dni"/>


			<div class="form-group">
				<form:label class="control-label col-sm-2" path="marca">Marca: </form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="marca" id="marca"
						placeholder="Marca" />
					<br>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-2" path="modelo">Modelo: </form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="modelo" id="modelo"
						placeholder="Modelo" />
					<br>
				</div>
			</div>


			<div class="form-group">
				<form:label class="control-label col-sm-2" path="patente">Patente: </form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="patente" id="patente"
						placeholder="Patente:ej XXX 111" />
					<br>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-2" path="fecha">Fecha: </form:label>
				<div class="col-sm-6">
					<form:input class="form-control" path="fecha"
						placeholder="Fecha:ej aaaa-mm-dd" id="fecha" />
					<br>
				</div>
			</div>

			<div class="form-group">
				<form:label type="date" class="control-label col-sm-2"
					path="detalle_Falla">Detalle de la Falla: </form:label>
				<div class="col-sm-6">
					<form:textarea class="form-control" path="detalle_Falla" id="falla"
						placeholder="Detalle de la falla" />
					<br>
				</div>
			</div>

			<div class="form-group">
				<form:label class="control-label col-sm-2" path="empleado">Empleado: </form:label>
				<div class="col-sm-6">
					<form:select class="form-control" path="empleado.id" id="empleado">

						<form:option value="0">Seleccione Empleado</form:option>

						<c:forEach items="${listaEmpleados}" var="empleado">
							<form:option value="${empleado.id}">
								<c:out value="${empleado.nombre} ${empleado.apellido}"></c:out>
							</form:option>

						</c:forEach>
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6 col-sm-offset-2">
					<div class="error" id="error"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6 col-sm-offset-2">
					<input type="submit" class="btn btn-danger form-control"
						value="Agregar Orden" />

				</div>
			</div>
		</form:form>
		<br>
		<br>
		<br>
	</div>
	<div class="footer-margin">
		<nav class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Proyecto Final - Ricardo
					Surribas</a>
			</div>
			<div class="btn-group navbuttons">
				<a href="https://www.Github.com/Mahgald" target="_blank"
					class="btn btn-sm btn-block btn-social btn-github"> <span
					class="fa fa-github"></span>GitHub
				</a>
			</div>
			<div class="btn-group navbuttons">
				<a href="https://ar.linkedin.com/in/ricardo-surribas"
					target="_blank"
					class="btn btn-sm btn-block btn-social btn-linkedin"> <span
					class="fa fa-linkedin"></span>Linkedin
				</a>
			</div>
		</div>
		</nav>
	</div>
	<script src="<%=request.getContextPath()%>/resources/js/nuevaOrden.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery224.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
</body>
</html>