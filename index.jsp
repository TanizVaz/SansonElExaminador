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
<TITLE>Plataforma de examenes</TITLE>
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
				</div>
			</div>
		</nav>
	</header>
	
	<div class="container">
	<section class="jumbotron">
		<div class="container">
			<h1>Plataforma de ex&#225;menes en l&#237;nea</h1>
			<p>La soluci&#243;n a ex&#225;menes presenciales</p>
		</div>
	</section>
	</div>
	
	<div class="container">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

   <div class="carousel-inner" role="listbox" align="center">
    <div class="item active">
      <img src="img/test.jpg" alt="***">
	  <div class="carousel-caption">
        <h3>Practico</h3>
        <h2>Sin necesidad de trasladarte</h2>
      </div>
    </div>

    <div class="item">
      <img src="img/segunda.jpg" alt="***">
	  <div class="carousel-caption">
        <h3>***</h3>
        <h2>C&#243;modo para profesores y alumnos</h2>
      </div>
    </div>

    <div class="item">
      <img src="img/tercera.jpg" alt="***">
	  <div class="carousel-caption">
        <h3>Sin estr&#233;s de presentaci&#243;n</h3>
        <h2>Aplica por tipos de ex&#225;men</h2>
      </div>
    </div>

    <div class="item">
      <img src="img/cuarta.jpg" alt="***">
	  <div class="carousel-caption">
        <h3>Resultados instantaneos</h3>
        <h2>Obten tus resultados justo al finalizar</h2>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>

	 <!-- main -->
	<section class="main container">
		<div class="row">
			<section class="posts col-md">
				
				<article class="post clearfix">
					<a href="#" class="thumb pull-left"></a>
					<h2 class="post-title">
						<a href="loggin.jsp">Inicia sesi&#243;n o crea una cuenta</a>
					</h2>
					<p class="post-contenido text-justify">
						Este sitio fu&#233; creado para facilitar la aplicaci&#243;n de ex&#225;menes 
						para profesores como para alumnos. En este podr&#225;s encontrar un cat&#225;logo 
						de ex&#225;menes para organizar tu tiempo y para ayudar a la efectividad en el 
						conteo de tus resultados.
					</p>

					<div class="contenedor-botones">
						<a href="loggin.jsp" class="btn btn-primary">Iniciar sesi&#243;n  <span class="glyphicon glyphicon-user"></span></a>
						<a href="registrar.jsp" class="btn btn-success">Crear cuenta <span class="glyphicon glyphicon-tag"></span></a>
					</div>
				</article>
			</section>	
		</div>
	</section>
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