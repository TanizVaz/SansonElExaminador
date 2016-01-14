 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>

 <html>
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/datepicker.css">

    <title>Registra informaci&oacute;n de tu banco de preguntas</title>
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
<form class="" action="security" method="get">
  <input type="hidden" name="action" value="RegistrarBanco">
  <input type="hidden" name="categoriaNum" value="1">
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
								    Nombre del banco:
							 </p>
							 <div class="input-group col-md-8">
				 			  <span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
				 			  <input type="text" name="banco" class="form-control" placeholder="Conjunto de preguntas asociadas" aria-describedby="basic-addon1">
							</div>

							<br>

    <!--El email debería estar como oculto o solicitarlo de la sesion -->
    <div name="categoria0" class="color2 col-md-6">
			Especifiaciones por categoria<br><br>
						<div class="row">
							 <p>
			Categoria
			</p>
			<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
			<input type="text" name="nombreCat0" class="form-control" placeholder="Ponle un nombre" aria-describedby="basic-addon1">
			</div><p>

			<br>N&uacute;mero de preguntas Obligatorias
			</p><input type="number" name="nameObl0" value=""><br>

			<p><br>N&uacute;mero de preguntas Opcionales
			</p><input type="number" name="nameOpc0" value=""><br><br>
			<div id="categorias">	</div>
			<button type="button" class="btn btn-info center-block" value="Agregar categor&iacute;a" id="addCategoria" onclick="addCat()">
			<span class="glyphicon glyphicon-ok"></span>  Agregar</a>
					</button>
			<p><br>
			Examen al que se unen
			</p><div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
			<input type="text" name="examen" class="form-control" placeholder="Ponle un nombre" aria-describedby="basic-addon1">
			</div><p>

      <button type="submit" class="btn btn-info center-block" value="Enviar" >
			<span class="glyphicon glyphicon-ok"></span>  Enviar</a>
					</button>

			 </section></div>
  </form>


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
	<script src="js/RegistrarBanco.js"></script>
  </body>
</html>
