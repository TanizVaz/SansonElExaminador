
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  	<link rel="stylesheet" href="css/bootstrap.min.css">
  	<link rel="stylesheet" href="css/estilos.css">
  	<link rel="stylesheet" href="css/datepicker.css">
    <title>Registra Instructor</title>
  </head>
  <body class="bg-1">
  <header>
  		<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
  			<div class="container">
  				<div class="navbar-header">
  					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion-fm">
  						<span class="sr-only">Desplegar / Ocultar Menu</span>
  						<span class="icon-bar"></span>
  						<span class="icon-bar"></span>
  						<span class="icon-bar"></span>
  					</button>
  					<a href="main.jsp" class="navbar-brand">Plataforma de ex&#225;menes</a>
  				</div>
  				<div class="collapse navbar-collapse" id="navegacion-fm">
  					<ul class="nav nav-pills col-md-6">
  						<li class="active" ><a href="index.jsp">Inicio</a></li>
  						<li class="dropdown">
  							<a href="tutos.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button">
  								Tutoriales <span class="caret"></span>
  							</a>
  							<ul class="dropdown-menu" role="menu">
  								<li><a href="tutos.jsp#tuto1">Crear una cuenta</a></li>
  								<li><a href="tutos.jsp#tuto2">Ingresar a un evento</a></li>
  								<li><a href="tutos.jsp#tuto3">Consultar el foro de preguntas</a></li>
  							</ul>
  						</li>
  						<li><a href="preguntas.jsp">Foro de preguntas </a></li>
  						<li><a href="soporte.jsp">Soporte</a></li>
  					</ul>
  					<%if (session.getAttribute(Attribute.Session.CURRENT_USER) != null) {%>
  					<div class="contenedor-botones col-md-2">
  					<a class="btn btn-primary"><%=((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getFullName()%> <span class="glyphicon glyphicon-user"></span></a>
  				</div>
  				<div class="contenedor-botones col-md-1">
  					<a  HREF="logout"  class="btn btn-success" >Salir <span class="glyphicon glyphicon-tag"></span></a>
  				</div>
  					<%}%>
  				</div>
  			</nav>
  	</header>
  <%@include file="mainInstructor.frame.jsp" %>
	<br>
 	 <br>
 		
  <form action="security" method="POST">
      <div class="row container">
       <div class="color2 text-center col-md-offset-1 col-md-8">
         <br>
           <br>
						 <h1 class="center-text"> Registro de Instructor</h1>
						 <br>
						 <br>
						 <label class="col-sm-2 control-label" for="Nombre">Escribe tu nombre&#58;</label>
						 <div class="input-group col-sm-3">
							 <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								 <input type="text" class="form-control" id="Nombre" placeholder="Nombre" required="required">
						 </div><br>
							 <label class="col-sm-2 control-label" for="Apellido">Escribe tu apellido&#58;</label>
							 <div class="input-group col-sm-3">
								 <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></span>
								 <input type="text" class="form-control" id="Apellido" placeholder="Apellido" required="required">
							 </div><br>
							 <label class="col-sm-2 control-label" for="Email">E&#45;mail&#58;</label>
							 <div class="input-group col-sm-3">
								 <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
								 <input type="email" class="form-control" id="Email" placeholder="E&#45;mail" required="required">
							 </div><br>
								<label class="col-sm-2 control-label" for="formGroup"></label>
								<div class="col-sm-4">
									<button type="submit" class="btn btn-success btn-lg" value="Enviar"><span class="glyphicon glyphicon-floppy-disk"></span> Enviar</button>
									<button type="reset" class="btn btn-danger btn-lg" value="Enviar"><span class="glyphicon glyphicon-remove"></span> Limpiar</button>
							 </div>
          </div></div></form>
          <br>
          <br>
    <footer>
        <div class="row">
          <div class="col-md-2 col-md-offset-5" >
            <p>We're not muggles</p>
          </div>
        </div>
    </footer>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/RegistrarEvento.js"> </script>
  </body>
</html>
