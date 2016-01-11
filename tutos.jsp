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
<TITLE>Tutoriales</TITLE>
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
							<li class="active" class="dropdown">
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
	<br>
	<br>
	<div class="container">
		<div class="page-header">
		<h1>Lista de tutoriales</h1>
		</div>
	</div>
	<section class="main container">
		<div class="row">
			<section class="posts col-md-9">
			<table 
				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						<img class="img-thumbnail" src="img/1.png" alt="" style="margin-right:90px">
					</a>
					<h2 name="tuto1" class="post-title">
						<a href="tutos.jsp#tuto1">Crear una cuenta</a>
					</h2>
					<p class="post-contenido text-justify">
						Dentro de este tutorial encontrar&#225;s los pasos para crear una cuenta
						si es que a&#250;n no cuentas con ella, as&#237; como el tipo de perfil
						con el que deber&#225;s crear tu cuenta. Registrate ahora!
					</p>
					<br>
				</article>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						<img class="img-thumbnail" src="img/2.png" alt="" style="margin-right:70px">
					</a>
					<h2 name="tuto2" class="post-title">
						<a href="tutos.jsp#tuto2">Ingresar a un evento</a>
					</h2>

					<p class="post-contenido text-justify">
						En este tutorial te ense&#241;aremos como ingresar a un evento si es
						que eres participante, el proceso de validaci&#243;n de cada uno,
						adem&#225;s de encontrar como aplicar un ex&#225;men programado.
					</p>
					<br>
				</article>
<br>
<br>
				<article class="post clearfix">
					<a href="#" class="thumb pull-left">
						<img class="img-thumbnail" src="img/3.png" alt="" style="margin-right:70px">
					</a>
					<h2  name="tuto3" class="post-title">
						<a href="tutos.jsp#tuto3">Consultar el foro de preguntas</a>
					</h2>
					<p class="post-contenido text-justify">
						Conoce la manera de comentar dentro del foro como participante
						y ayudar a los dem&#225;s usuarios con sus dudas.
					</p>
					<br>
				</article>
			</section>
		</div>
	</section>
	<br>
	<br>

	<br>
	<br>
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
			</div>
		</div>
	</footer>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	  </body>
</html>