<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject"%>



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

	<%if (session.getAttribute(Attribute.Session.CURRENT_USER) != null) {%>
<% if(((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getRole().equals("INSTRUCTOR")) { %>
<%@include file="menuInstructor.frame.jsp" %>
 			<br>
			<div class="container">
				<section class="main row">
					<article class="col-md-9">
 	 				 <h2 class="post-contenido text-justify">
 	 					Bienvenido instructor, checa lo que tenemos hoy para ti.
 	 				 </h2>
 					 	</article>
						<br> <br> <br> <br> <br>
							<br> <br><br> <br> <br>
						<aside class="color2 col-sm-2">
	 					 <p>
	 						Ex&#225;menes
	 					 </p>
	 				 </aside>

	 				 <aside class="color2 col-sm-2">
						 <p>
							 Fecha Aplicación
						 </p>
	 				 </aside>

					 <aside class="color2 col-sm-2">
						 <p>
							 Tipo de ex&#225;men
						 </p>
	 				 </aside>
					 <aside class="color2 col-sm-2">
						 <p>
						Participante inscritos
						 </p>
	 				 </aside>

					 <div class="row">
						 <div class="color2 col-md-2">
							 <p>
								 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
								 </p>
								 <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span>  Editar</a>
							 </div>
						 <div class="col-md-2">
							 <p>
							 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							 </p>
							 <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span>  Editar</a>
						 </div>

						 <div class=" color2 col-md-2">
							 <p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							 </p>
							 <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span>  Editar</a>
						 </div>

						 <div class="col-md-2"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						 </p>
					 <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span>  Editar</a>
				 </div>
	 		 </section>

			 </div>

			</div>
</div>
<%} else{if(((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getRole().equals("PARTICIPANTE")) {%>
<%@include file="menuParticipante.frame.jsp" %>
<br>

<div class="container">
	<section class="main row">
		<article class="col-md-9">
		 <h2 class="post-contenido text-justify">
			 Hola! bienvenido de nuevo a la plataforma de ex&#225;menes en l&#237;nea. Revisa lo que tenemos
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
 <%} else{if(((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getRole().equals("ADMIN")) {  %>
<%@include file="menuAdministrador.frame.jsp" %>
 <br>
			<div class="container">
				<section class="main row">
					<article class="col-md-9">
 	 				 <h2 class="post-contenido text-justify">
 	 					Bienvenido Administrador, checa lo que tenemos hoy para ti.
 	 				 </h2>
 					 	</article>
	 		 </section>
			 </div>
	<br> <br> <br><br>
<%} %>
<%} %>
<%} %>
<%} %>
	<footer>
			<div class="row">
				<div class="col-md-2 col-md-offset-5" >
					<p>We're not muggles</p>
				</div>
			</div>
	</footer>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
