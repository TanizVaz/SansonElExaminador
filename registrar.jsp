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
<TITLE>Registrarse</TITLE>
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
						</div>
						<div class="col-md-4"></div>
						<div class="collapse navbar-collapse" id="navegacion-fm">
							<ul class="nav nav-pills col-md-8">
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
        <div class="container">
            <h1>&Aacute;rea de Registro</h1>
        </div>
    <div class="container well bg-2">
        <div class="row">
		<img src="img/reg.png" alt="Iniciar Sesi&oacute;n" class="img-rounded img-responsive center-block">
		<fieldset>
			<legend><div class="col-xs-12"><h3>Bienvenido al Sistema&#58;</h3>

			</legend>
			<label class="col-sm-2 control-label" for="fecha"> </label>
		  </fieldset>
        </div>
		<form class="form-horizontal" action="security" method="GET">
			<input type="hidden"  name="action" value="newUser">
			<br>
			<div class="form-group">
			<br>
			<br>
			<br>
                    <label class="col-sm-2 control-label" for="Nombre">Escribe tu nombre&#58;</label>
                    <div class="input-group col-sm-3">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
  			<input type="text" class="form-control" name="name" id="Nombre" placeholder="Nombre" required="required">
                    </div>
  		</div>

			<br>
			<div class="form-group">
                    <label class="col-sm-2 control-label" for="Apellido">Escribe tu apellido&#58;</label>
                    <div class="input-group col-sm-3">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></span>
  			<input type="text" class="form-control" name="lastname" id="Apellido" placeholder="Apellido" required="required">
                    </div>
  		</div>
		<br>
  		<div class="form-group">
                    <label class="col-sm-2 control-label" for="Email">E&#45;mail&#58;</label>
                    <div class="input-group col-sm-3">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  			<input type="email" class="form-control" name="id_usuario" id="Email" placeholder="E&#45;mail" required="required">
                    </div>
  		</div>
		  <br>
		   <div class="form-group">
			  <label class="col-sm-2 control-label" for="rol">Tipo de Usuario:</label>
			  <div class="input-group col-sm-3">
				<select class="form-control" id="rol" name="rol" required="required">
					<option value="">Selecciona tu Usuario</option>
					<option value="instructor">Instructor</option>
					<option value="participante">Participante</option>
				</select>
			  </div>
		  </div>
		  <br>
		<!--<div class="form-group">
                    <label class="col-sm-2 control-label" for="foto">Ingrese la foto: </label>
                    <div class="input-group col-sm-3">
  			<input type="file" name="foto">
                    </div>
  		</div>-->
<br>
		<div class="form-group">
                    <label class="col-sm-2 control-label" for="Password">Password&#58;</label>
                    <div class="input-group col-sm-3">
  			<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
  			<input type="password" class="form-control" name="password" id="Password" placeholder="Password" required="required">
                    </div>
  		</div>
		  <br>
		<div class="form-group">
                    <label class="col-sm-2 control-label" for="ConfirmarPassword">Confirmar password&#58;</label>
                    <div class="input-group col-sm-3">
  			<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
  			<input type="password" class="form-control" name="password1" id="ConfirmarPassword" placeholder="Password" required="required">
                    </div>
  		</div>
		  <br>

		  <br>
		<fieldset>
			<legend>Contesta las preguntas de seguridad&#58;</legend>
			<label class="col-sm-2 control-label" for="fecha"> </label>
		  </fieldset>
		<br>
		<div class="form-group">
                    <label class="col-sm-4 control-label" for="Mascota">Escribe el nombre de tu mascota&#58;</label>
                    <div class="input-group col-sm-3">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-sort-by-alphabet"></span></span>
  			<input type="text" class="form-control" name="res_sec1" id="Mascota" placeholder="Mascota" required="required">
                    </div>
  		</div>
		<br>
		<div class="form-group">
                    <label class="col-sm-4 control-label" for="Libro">Escribe el nombre de tu libro favorito&#58;</label>
                    <div class="input-group col-sm-3">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-tasks"></span></span>
  			<input type="text" class="form-control" name="res_sec2" id="Libro" placeholder="Libro" required="required">
                    </div>
  		</div>
		<br>
		<div class="form-group">
                    <label class="col-sm-4 control-label" for="Cancion">Escribe el nombre de tu canci&oacute;n favorita&#58;</label>
                    <div class="input-group col-sm-3">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-sound-dolby"></span></span>
  			<input type="text" class="form-control" name="res_sec3" id="Cancion" placeholder="Cancion" required="required">
                    </div>
  		</div>
		<br>
		<div class="form-group">
		   <label class="col-sm-2 control-label" for="formGroup"></label>
		   <div class="col-sm-4">
			   <button type="submit" class="btn btn-success btn-lg" value="Enviar"><span class="glyphicon glyphicon-floppy-disk"></span> Enviar</button>
			   <button type="reset" class="btn btn-danger btn-lg" value="Enviar"><span class="glyphicon glyphicon-remove"></span> Limpiar</button>
			</div>
		</div>
		</form>

	</div>
</body>
	<br>
	<br>
<br>
<br>

	<footer>
			<div class="row">
				<div class="col-md-2 col-md-offset-5" >
					<p>We're not muggles</p>
				</div>
			</div>
	</footer>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</html>
