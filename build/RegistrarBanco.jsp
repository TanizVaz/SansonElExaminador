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
<TITLE>Registrar banco de Preguntas</TITLE>
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
					<a href="index.html" class="navbar-brand">Plataforma de ex&#225;menes</a>
				</div>
				<div class="collapse navbar-collapse" id="navegacion-fm">
					<ul class="nav nav-pills">
						<li><a href="index.jsp">Inicio</a></li>
						<li class="dropdown">
							<a href="tutos.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button">
								Tutoriales <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="tutos.jsp #tuto1">Crear una cuenta</a></li>
								<li><a href="tutos.jsp #tuto2">Ingresar a un evento</a></li>
								<li><a href="tutos.jsp #tuto3">Consultar el foro de preguntas</a></li>
							</ul>
						</li>
						<li><a href="Foro.jsp">Foro de preguntas </a></li>
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
					<a href="crearExamenPartic.jsp" class="list-group-item">Crear examen</a>
					<a href="solicitudesParticipante.jsp" class="list-group-item">Solicitudes de participantes</a>
					<a href="registrarInstructor.jsp" class="list-group-item ">Registrar participante</a>
					<a href="bancoPreguntasInst.jsp" class="list-group-item active">Registrar banco de preguntas</a>
					<a href="InsCuenta.jsp" class="list-group-item ">Administrar cuenta</a>
				</div>
			</section>
					<br>
    
    Clave de tu examen<input type="claveExamen" ><br>
    Ingrese su pregunta
    <input type="text" name="pregunta">

    <div name="preguntas">
<form  action="index.html" method="GET">


      <div name="pregunta0">
        <p>
          Tipo de pregunta
      <input type="radio" name="tipo" value="VerFal" onchange="cambioRadio()">Verdadero o Falso
      <input type="radio" name="tipo" value="OpcionesPer" onchange="cambioRadio()">Opci&oacute;n m&uacuteltiple
      <input type="checkbox" name="obligatoria" > Obligatoria
      </p>
      <input type="text" name="categoria" placeholder="categoria">
        <div id="correcto0">
          <!-- Aqui pondré las opciones para seleccionar Correcta y llenar campo opciones y sel correcta-->
        </div>
      <input type="button" id="addPregunta0" name="addPregunta" value="Agregar pregunta" onclick="addingPregunta()">
    </div>
    </form>
  </div>

<<<<<<< HEAD:build/RegistrarBanco.jsp
    <script src="js/RegistrarBanco.js"></script>
=======
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
    <script src="/js/RegistrarBanco.js"></script>
    
>>>>>>> 92d53baa11007913ad574d67c668a7c8957fede5:RegistrarBanco.html
  </body>
</html>
