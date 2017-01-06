<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Index</title>

<!-- Bootstrap core CSS -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/flatly.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-social.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styles.css">
<style type="text/css">
body{
	margin-top: 40px;
}
</style>
</head>


<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">High Performance Taller Mecanico</a>
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

	<div class="container">

		<div class="page-header"><h1>High Performance Taller Mecanico</h1></div>

	</div>
	
	
	<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide carouser-position" data-ride="carousel">
    <!-- Indicators -->


    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<%=request.getContextPath()%>/resources/img/taller1.jpg" alt="Chania" class="img-responsive">
        
      </div>

      <div class="item">
        <img src="<%=request.getContextPath()%>/resources/img/taller2.jpg" alt="Chania" class="img-responsive">
        
      </div>
    
      <div class="item">
        <img src="<%=request.getContextPath()%>/resources/img/taller3.jpg" alt="Flower" class="img-responsive">
       
      </div>

      <div class="item">
        <img src="<%=request.getContextPath()%>/resources/img/taller4.jpg" alt="Flower" class="img-responsive">
       
      </div>
  
    </div>

   
  </div>
</div>
	
	<br>
	<br>
	
	
	
	
	
	
	
	
	
	
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