<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Registro de banco de preguntas</title>
</head>
<body>
  Banco de preguntas a utilizar <input type="text" name="banco" ><br>
  <!--Cargado de email-->
  Ingrese su pregunta  <input type="text" name="pregunta">
  <form  action="index.html" method="GET">
  <div id="preguntas">
    <input type="hidden" value="1" id="noPreguntas">
    <div name="pregunta0">
      <p>
        <input type="text" name="categoria0" placeholder="categoria"><br>
        Tipo de pregunta
    <input type="radio" name="tipo0" value="VerFal" onchange="cambioRadio()">Verdadero o Falso
    <input type="radio" name="tipo0" value="OpcionesPer" onchange="cambioRadio()">Opci&oacute;n m&uacute;ltiple
    <input type="checkbox" name="obligatoria0" > Obligatoria
    </p>
    <div id="correcto0">
      <!-- Aqui pondré las opciones para seleccionar Correcta y llenar campo opciones y sel correcta-->
    </div>
  </div>
  </form>
</div>
<input type="button" id="addPregunta0" name="addPregunta" value="Agregar pregunta" onclick="addingPregunta()">

  <script src="js/RegistrarPreguntas.js"></script>
</body>
</html>
=======
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
<TITLE>Banco de preguntas</TITLE>
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
	

	  	<section class="col-md-3 hidden-xs hidden-sm">
		<br>
		<img src="img/persona.png" align="center" class="img-rounded" alt="id" width="180" height="170">	
				<h4>Men&#250;</h4>
				<div class="list-group">
					<a href="mainInstructor.html" class="list-group-item  ">Inicio</a>
					<a href="crearExamenPartic.html" class="list-group-item">Crear examen</a>
					<a href="solicitudesParticipante.html" class="list-group-item">Solicitudes de participantes</a>
					<a href="registrarInstructor.html" class="list-group-item ">Registrar participante</a>
					<a href="bancoPreguntasInst.html" class="list-group-item active">Registrar banco de preguntas</a>
					<a href="InsCuenta.html" class="list-group-item ">Administrar cuenta</a>
				</div>
			</section>

					<br>

			<div class="container">
				<section class="main row">
					<article class="col-md-9">
					 <h2 class="post-contenido text-justify">
						 Para crear de manera m&#225;s &#225;gil tus pruebas, ingresa diversas preguntas al banco de datos.
					 </h2>
						</article>
						<br> <br> <br> <br> <br>
							<br>
						<div class="row">
						 <div class="color2 col-md-6">
							 <p>
								Insertar pregunta
							</p>
							 <div class="input-group col-md-8">
				 			  <input type="text" class="form-control" placeholder="Pregunta" aria-describedby="basic-addon1">
								<span class="input-group-addon glyphicon glyphicon-pencil" id="basic-addon1"></span>
							</div>

							<br><br><br><br><br><br><br>

							<div class="input-group col-md-8">
							 <input type="text" class="form-control" placeholder="Pregunta" aria-describedby="basic-addon1">
							 <span class="input-group-addon glyphicon glyphicon-pencil" id="basic-addon1"></span>
						 </div>

						 <br><br><br><br><br><br><br>

						 <div class="input-group col-md-8">
							<input type="text" class="form-control" placeholder="Pregunta" aria-describedby="basic-addon1">
							<span class="input-group-addon glyphicon glyphicon-pencil" id="basic-addon1"></span>
						</div>

						<br><br><br><br><br><br><br>

						<div class="input-group col-md-8">
						 <input type="text" class="form-control" placeholder="Pregunta" aria-describedby="basic-addon1">
						 <span class="input-group-addon glyphicon glyphicon-pencil" id="basic-addon1"></span>
					 </div>

					 <br><br><br><br><br><br><br>

					 <div class="input-group col-md-8">
						<input type="text" class="form-control" placeholder="Pregunta" aria-describedby="basic-addon1">
						<span class="input-group-addon glyphicon glyphicon-pencil" id="basic-addon1"></span>
					</div>

					<br><br><br><br><br><br>
					<br><br><br><br><br>
				</div> <!--Fin divison col-md-6 -->


						 <div class="color2 col-md-3">
							 <p>
 								Ingrese respuestas
 							</p>
 							<div class="input-group col-md-8">
								<div class="container">
						<div class="input-group col-md-2">
							<span class="input-group-addon">
			        <input type="radio" aria-label="...">
			      </span>
							  <input type="text" class="form-control" placeholder="Respuesta 1" aria-describedby="basic-addon2">

							</div>

							<div class="input-group col-md-2">
								<span class="input-group-addon">
				        <input type="radio" aria-label="...">
				      </span>
							  <input type="text" class="form-control" placeholder="Respuesta 2" aria-describedby="basic-addon2">

							</div>

							<div class="input-group col-md-2">
								<span class="input-group-addon">
				        <input type="radio" aria-label="...">
				      </span>
							  <input type="text" class="form-control" placeholder="Respuesta 3" aria-describedby="basic-addon2">
						</div>

						<div class="container">
							<br>
								 <a href="#" class="btn btn-primary" align="left"><span class="glyphicon glyphicon-apple"></span>  Agregar</a>
								 <br><br>
							 </div>

							 <div class="input-group col-md-2">
	 							<span class="input-group-addon">
	 			        <input type="radio" aria-label="...">
	 			      </span>
	 							  <input type="text" class="form-control" placeholder="Respuesta 1" aria-describedby="basic-addon2">

	 							</div>

	 							<div class="input-group col-md-2">
	 								<span class="input-group-addon">
	 				        <input type="radio" aria-label="...">
	 				      </span>
	 							  <input type="text" class="form-control" placeholder="Respuesta 2" aria-describedby="basic-addon2">

	 							</div>

	 							<div class="input-group col-md-2">
	 								<span class="input-group-addon">
	 				        <input type="radio" aria-label="...">
	 				      </span>
	 							  <input type="text" class="form-control" placeholder="Respuesta 3" aria-describedby="basic-addon2">
	 						</div>

	 						<div class="container">
	 							<br>
	 								 <a href="#" class="btn btn-primary" align="left"><span class="glyphicon glyphicon-apple"></span>  Agregar</a>
									  <br><br>
	 							 </div>

								 <div class="input-group col-md-2">
								 <span class="input-group-addon">
								 <input type="radio" aria-label="...">
							 </span>
									 <input type="text" class="form-control" placeholder="Respuesta 1" aria-describedby="basic-addon2">

								 </div>

								 <div class="input-group col-md-2">
									 <span class="input-group-addon">
									 <input type="radio" aria-label="...">
								 </span>
									 <input type="text" class="form-control" placeholder="Respuesta 2" aria-describedby="basic-addon2">

								 </div>

								 <div class="input-group col-md-2">
									 <span class="input-group-addon">
									 <input type="radio" aria-label="...">
								 </span>
									 <input type="text" class="form-control" placeholder="Respuesta 3" aria-describedby="basic-addon2">
							 </div>

							 <div class="container">
								 <br>
										<a href="#" class="btn btn-primary" align="left"><span class="glyphicon glyphicon-apple"></span>  Agregar</a>
										 <br><br>
									</div>

									<div class="input-group col-md-2">
									 <span class="input-group-addon">
									 <input type="radio" aria-label="...">
								 </span>
										 <input type="text" class="form-control" placeholder="Respuesta 1" aria-describedby="basic-addon2">

									 </div>

									 <div class="input-group col-md-2">
										 <span class="input-group-addon">
										 <input type="radio" aria-label="...">
									 </span>
										 <input type="text" class="form-control" placeholder="Respuesta 2" aria-describedby="basic-addon2">

									 </div>

									 <div class="input-group col-md-2">
										 <span class="input-group-addon">
										 <input type="radio" aria-label="...">
									 </span>
										 <input type="text" class="form-control" placeholder="Respuesta 3" aria-describedby="basic-addon2">
								 </div>

								 <div class="container">
									 <br>
											<a href="#" class="btn btn-primary" align="left"><span class="glyphicon glyphicon-apple"></span>  Agregar</a>
											 <br><br>
										</div>

										<div class="input-group col-md-2">
										 <span class="input-group-addon">
										 <input type="radio" aria-label="...">
									 </span>
											 <input type="text" class="form-control" placeholder="Respuesta 1" aria-describedby="basic-addon2">

										 </div>

										 <div class="input-group col-md-2">
											 <span class="input-group-addon">
											 <input type="radio" aria-label="...">
										 </span>
											 <input type="text" class="form-control" placeholder="Respuesta 2" aria-describedby="basic-addon2">

										 </div>

										 <div class="input-group col-md-2">
											 <span class="input-group-addon">
											 <input type="radio" aria-label="...">
										 </span>
											 <input type="text" class="form-control" placeholder="Respuesta 3" aria-describedby="basic-addon2">
									 </div>

									 <div class="container">
										 <br>
												<a href="#" class="btn btn-primary" align="left"><span class="glyphicon glyphicon-apple"></span>  Agregar</a>
												 <br><br>
											</div>

											<div class="container">
												<br>
													 <a href="#" class="btn btn-danger" align="left"><span class="glyphicon glyphicon-chevron-down"></span>  Agregar m&#225;s</a>
														<br><br>
												 </div>


							</div>
						 </div>
					 </div>
						 </div>
			 </section>

			 </div>

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

<br><br>

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
>>>>>>> 92d53baa11007913ad574d67c668a7c8957fede5
