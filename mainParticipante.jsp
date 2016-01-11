<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/datepicker.css">
<TITLE>Cuenta</TITLE>
</head>
<body class="bg-1">
<%@include file="header.frame.jsp" %>
<%@include file="messages.frame.jsp" %>
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
					<a href="index.jsp" class="navbar-brand">Plataforma de ex&#225;menes</a>
				</div>
				<div class="collapse navbar-collapse" id="navegacion-fm">
					<ul class="nav nav-pills">
						<li><a href="index.jsp">Inicio</a></li>
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
				</div>
			</div>
		</nav>
	</header>
	

	  	<section class="col-md-3 hidden-xs hidden-sm">
		<br>
		<img src="img/persona.png" align="center" class="img-rounded" alt="id" width="180" height="170">
				<h4>Men&#250;</h4>
				<div class="list-group">
					<a href="mainParticipante.jsp" class="list-group-item active">Mis Eventos</a>
					<a href="participanteSearch.jsp" class="list-group-item">B&#250;squeda de eventos</a>
					<a href="participanteEventos.jsp" class="list-group-item">Eventos</a>
					<a href="participanteCuenta.jsp" class="list-group-item">Administrar cuenta</a>
				</div>
			</section>

 			<br>

			<div class="container">
				<section class="main row">
					<article class="col-md-9">
 	 				 <h2 class="post-contenido text-justify">
 	 					 Hola +UserName bienvenido de nuevo a la plataforma de ex&#225;menes en l&#237;nea. Revisa lo que tenemos
 						 de nuevo hoy.
 	 				 </h2>
 					 	</article>
						<br> <br> <br> <br> <br>
							<br> <br><br> <br> <br>
						<aside class="col-sm-2">
	 					 <p>
	 						Nombre del evento
	 					 </p>
	 				 </aside>

	 				 <aside class="col-sm-2">
						 <p>
							 Fecha Aplicación
						 </p>
	 				 </aside>

					 <aside class="col-sm-2">
						 <p>
							 Instructor
						 </p>
	 				 </aside>
					 <aside class="col-sm-2">
						 <p>
							Tipo ex&#225;men
						 </p>
	 				 </aside>

					 <div class="row">
						 <div class="color1 col-md-2">
							 <p>
								 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
								 Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat... </p></div>
						 <div class="col-md-2">
							 <p>
							 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							 Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p></div>
						 </p>
						 <div class=" color1 col-md-2">
							 <p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  </p> </div>

						 <div class="col-md-2"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							 Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p></div>


						 </div>
	 		 </section>

			 </div>

			</div>
			<br> <br> <br><br> 
<br>
<br>
<br>

<% if(session.getAttribute(Attribute.Session.CURRENT_USER) == null) { %>
<a href="loggin.jsp">Login</a>
<% } %>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<p>We're not muggles</p>
				</div>
				<div class="col-xs-6">
					<ul class="list-inline text-right">
						<li><a href="#">Cuenta</a></li>
						<li><a href="mainParticipante.jsp">Mis Eventos</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>


</body>
</html>
