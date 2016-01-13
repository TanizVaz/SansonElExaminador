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
<TITLE>Foro de Preguntas</TITLE>
</head>

<%@include file="header.frame.jsp" %>
<%@include file="messages.frame.jsp" %>

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
					<a href="index.html" class="navbar-brand">Plataforma de ex&#225;menes</a>
				</div>
				<div class="collapse navbar-collapse" id="navegacion-fm">
					<ul class="nav nav-pills">
						<li><a href="index.html">Inicio</a></li>
						<li class="dropdown">
							<a href="tutos.html" class="dropdown-toggle" data-toggle="dropdown" role="button">
								Tutoriales <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="tutos.html#tuto1">Crear una cuenta</a></li>
								<li><a href="tutos.html#tuto2">Ingresar a un evento</a></li>
								<li><a href="tutos.html#tuto3">Consultar el foro de preguntas</a></li>
							</ul>
						</li>
						<li><a href="preguntas.html">Foro de preguntas </a></li>
						<li><a href="soporte.html">Soporte</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<br><br>

  <div class="container">
	<h1>Foro de Preguntas y Respuestas</h1>
</div> <br><br>

  <div class="container">
  <div class="panel panel-info">
 <div class="panel-heading">
 <h3 class="panel-title">Pregunta: </h3>
 </div>
 <div class="panel-body">
 1.-
 </div>
 <div class="panel-body">
 2.-
 </div>

 </div>
</div>

<div class="container">
<div class="panel panel-success">
<div class="panel-heading">
<h3 class="panel-title">Respuestas: </h3>
</div>
<div class="panel-body">
1.-
</div>
<div class="panel-body">
2.-
</div>

</div>
</div>

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
						<li><a href="#">Principal</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

<body>
</body>
</html>

