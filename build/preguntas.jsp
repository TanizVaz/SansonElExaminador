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
<TITLE>Foro de preguntas</TITLE>
</head>
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
						<li ><a href="index.jsp">Inicio</a></li>
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
						<li class="active"><a href="preguntas.jsp">Foro de preguntas </a></li>
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
					<a href="mainInstructor.html" class="list-group-item  active">Inicio</a>
					<a href="crearExamenPartic.html" class="list-group-item">Crear examen</a>
					<a href="solicitudesParticipante.html" class="list-group-item">Solicitudes de participantes</a>
					<a href="registrarInstructor.html" class="list-group-item ">Registrar participante</a>
					<a href="bancoPreguntasInst.html" class="list-group-item ">Registrar banco de preguntas</a>
					<a href="InsCuenta.html" class="list-group-item ">Administrar cuenta</a>
				</div>
	</section>
					<br>

					<main>
					      <section class="well well4">
					        <div class="container">
					              <h1>Soporte T&#233;cnico</h1>
					              <form id="contact-form" class='contact-form'>
					                <fieldset>
					                  <label class="name">
					                    <input type="text" name="name" placeholder="Tema de la pregunta:" value="" data-constraints="@Required @JustLetters"/>
					                    <span class="empty-message">*This field is required.</span>
					                  </label>

					                  <label class="message">
					                    <textarea name="message" size="50" placeholder="Plantea tu pregunta:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
					                    <span class="empty-message">*This field is required.</span>
					                  </label>

														<!--
														Statement stmt = con.createStatement(
                                      ResultSet.TYPE_SCROLL_INSENSITIVE,
                                      ResultSet.CONCUR_UPDATABLE);
       												        ResultSet rs = stmt.executeQuery("SELECT a, b FROM TABLE2");


														-->

					                  <div class="btn-wr text-primary">
					                    <a class="btn btn-primary" href="#" data-type="submit"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Preguntar al foro</a>
															<a href="#" class="btn btn-success"><span class="glyphicon glyphicon-apple"></span> Revisar foro</a>
														</div>

					                </fieldset>
					                <div class="modal fade response-message">
					                  <div class="modal-dialog">
					                    <div class="modal-content">
					                      <div class="modal-header">
					                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					                          &times;
					                        </button>
					                        <h4 class="modal-title">Modal title</h4>
					                      </div>
					                      <div class="modal-body">
					                        Tu pregunta se subio correctamente!
					                      </div>
					                    </div>
					                  </div>
					                </div>
					              </form>
					        </div>
					      </section>
					    </main>
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
