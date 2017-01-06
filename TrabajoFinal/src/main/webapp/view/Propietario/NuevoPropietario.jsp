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
<title>Nuevo Propietario</title>

<style type="text/css">
body {
	margin-top: 45px;
}
</style>
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
					<li class="active"><a href="<%=request.getContextPath()%>/Propietario/">Lista Propietarios</a></li>
					<li><a href="<%=request.getContextPath()%>/Repuesto/">Lista Repuestos</a></li>
					<li><a href="<%=request.getContextPath()%>/OrdenTrabajo/">Lista Ordenes de Trabajo</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
<style type="text/css">
body{
	margin-top: 70px;
}
</style>


<div class="col-md-8 col-md-offset-2">
	<h1>El propietario no se encuentra registrado</h1>
	<h3>Registre nuevo propietario</h3>
	<form:form action="NuevoPropietario" method="post" modelAttribute="propietario" class="form-horizontal">
		
		
		<div class="form-group">
		<form:label class="control-label col-sm-2" path="dni">DNI: </form:label>
		<div class="col-sm-6">
		<form:input class="form-control" path="dni"/>
		<br>
		</div>
		</div>
		
		
		<div class="form-group">
		<form:label class="control-label col-sm-2" path="nombre">Nombre: </form:label>
		<div class="col-sm-6">
		<form:input class="form-control" path="nombre" />
		<br>
		</div>
		</div>


<div class="form-group">
		<form:label class="control-label col-sm-2" path="apellido">Apellido: </form:label>
		<div class="col-sm-6">
		<form:input class="form-control" path="apellido" />
		<br>
		</div> 
		</div>



<div class="form-group">
		<form:label class="control-label col-sm-2" path="direccion">Direccion: </form:label>
		<div class="col-sm-6">
		<form:input class="form-control" path="direccion" />
		<br>
		</div>
		</div>



<div class="form-group">
		<form:label class="control-label col-sm-2" path="telefono">Telefono: </form:label>
		<div class="col-sm-6">
		<form:input class="form-control" path="telefono" />
		<br>
	</div>
	</div>



		<div class="form-group">
				<div class="col-sm-6 col-sm-offset-2">
					<input type="submit" class="btn btn-danger form-control"
						value="Registrar" />
				</div>
			</div>
	</form:form>
		<br><br><br>
	</div>
	

	
	
<div class="footer-margin">	
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
</div>
	<script src="<%=request.getContextPath()%>/resources/js/jquery224.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
</body>
</html>