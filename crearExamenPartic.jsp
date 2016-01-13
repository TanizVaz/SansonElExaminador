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
<TITLE>Crear ex&#225;men</TITLE>
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
					<a href="mainInstructor.jsp" class="list-group-item  ">Inicio</a>
					<a href="crearExamenPartic.jsp" class="list-group-item active">Crear examen</a>
					<a href="solicitudesParticipante.jsp" class="list-group-item">Solicitudes de participantes</a>
					<a href="registrarInstructor.jsp" class="list-group-item ">Registrar participante</a>
					<a href="bancoPreguntasInst.jsp" class="list-group-item ">Registrar banco de preguntas</a>
					<a href="InsCuenta.jsp" class="list-group-item ">Administrar cuenta</a>
				</div>
			</section>
					<br>

			<div class="container">
				<section class="main row">
					<article class="col-md-9">
					 <h2 class="post-contenido text-justify">
						 En este espacio podr&#225;s desarrollar tus ex&#225;menes
					 </h2>
						</article>
						<br> <br> <br> <br> <br>
							<br>
						<div class="row">
						 <div class="color2 col-md-6">
							 <p>
								 Nombre del ex&#225;men
							 </p>
							 <div class="input-group col-md-8">
				 			  <span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>

				 			  <input type="text" class="form-control" placeholder="Inserte nombre" aria-describedby="basic-addon1">
							</div>

							<br>

					<br><br><br>
					<p>
						Buscar preguntas
					</p>
					<form action="" class="navbar-form navbar-left" role="search">
					 <div class="form-group">
						 <input type="text" class="form-control" placeholder="Buscar...">
					 </div>
					 <button type="submit" class="btn btn-primary">
						 <span class="glyphicon glyphicon-search"></span>
					 </button>
					 <button type="submit" class="btn btn-info">
						<a href="#" ><span class="glyphicon glyphicon-ok"></span>  Agregar</a>
					</button>
				 </form>

					<br><br><br>

					<p>
						Descripci&#243;n
					</p>
					<textarea class="medium-textarea" ref="Medium" placeholder="Breve descripci&#243;n del ex&#225;men:" ></textarea>

				</div> <!--Fin divison col-md-6 -->


						 <div class="color2 col-md-3">
							 <p>
 								Caracter&#237;sticas del ex&#225;men
 							</p>
							<div class="btn-group">
								<input type="radio" name="tipoExa" value="abierto" onchange="pintaTiempos()">Tiempo Abierto<br>
								<input type="radio" name="tipoExa" value="hrespc" onchange="pintaTiempos()">Hora especifica<br>
							</div>
							<div id="pinta">
							</div>


							<br><br><br><br>


 							<div class="input-group col-md-8">


							<div class="btn-group">
						<button class="btn btn-info btn-md dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							N&#250;mero de preguntas <span class="caret"></span>
						</button>
						Numero de preguntas<input type="number" name="numpreg" min=5>
					<br><br><br>

					<div class="btn-group">
						Tiempo <input type="number" min=5>

					<br><br><br><br><br><br><br><br><br>

						 </div>
					 </div>
						 </div>
					 </div>
			 </section>

			 </div>
			 <br><br>


		<div class="container col-md-3">
			<br>
				 <a href="#" class="btn btn-primary" align="left"><span class="glyphicon glyphicon-apple"></span>  Aplicar</a>
				 <a href="#" class="btn btn-success" align="left"><span class="glyphicon glyphicon-collapse-down"></span>  Agregar m&#225;s</a>
			 </div>
			<br><br>



	<br> <br> <br><br>

	<div class="container">
	<div class="row">


		<div class="color2 col-md-3">
			<div class="thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>Ex&#225;men modelo</h3>
					<p class="post-contenido text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						</p>
					<p><a href="#" class="btn btn-primary" role="button">Ver</a></p>
				</div>
			</div>
		</div>

		<div class="color2 col-md-3">
			<div class="thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>Ex&#225;men modelo</h3>
					<p class="post-contenido text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						</p>
					<p><a href="#" class="btn btn-primary" role="button">Ver</a></p>
				</div>
			</div>
		</div>


	<div class="color2 col-md-3">
		<div class="thumbnail">
			<img src="..." alt="...">
			<div class="caption">
				<h3>Ex&#225;men modelo</h3>
				<p class="post-contenido text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
					</p>
				<p><a href="#" class="btn btn-primary" role="button">Ver</a></p>
			</div>
		</div>
	</div>

	<div class="color2 col-md-3">
		<div class="thumbnail">
			<img src="..." alt="...">
			<div class="caption">
				<h3>Ex&#225;men modelo</h3>
				<p class="post-contenido text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
					</p>
				<p><a href="#" class="btn btn-primary" role="button">Ver</a></p>
			</div>
		</div>
	</div>

</div>
</div>
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
						<li><a href="#">Principal</a></li>
					</ul>
				</div>
			</div>
		</div>

	</footer>
	<script src="js/crearExamenPartic.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

<body>
</body>
</html>
