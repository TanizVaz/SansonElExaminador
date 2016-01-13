<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/estilos.css">
		<link rel="stylesheet" href="css/datepicker.css">
		<TITLE>Iniciar sesi&#243;n</TITLE>
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

<form action="security" method="POST">
	<input type="hidden" name="action" value="authenticate">
    	<div class="container well bg-2">
					<div class="form-group boxlogin">
    					<p><br/></p>
  						<div class="row">
  							<div class="col-md-50"></div>
  							<div class="col-md-30">
  									<div class="panel panel-default">
  											<div class="panel-body">
										    		<div class="page-header">
																<img src="img/log.png" alt="Iniciar Sesi&oacute;n" width="100" height="100" class="img-circle img-responsive center-block">
															  <h3>&Aacute;rea de Acceso</h3>
														</div>
		<form action="autenticar" method="POST" onsubmit="return checkPass();">
  		<div class="form-group">

<label for="username">Usuario</label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
  			<input name="id_usuario" type="email" class="form-control" id="id_usuario" required placeholder="E&#45;mail">
                    </div>
  		</div>
  		<div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-group">
  			<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
  			<input type="password" name="password" class="form-control" id="password" placeholder="Password"
			required>
                    </div>
  		</div>
  		<span id="msg"></span>
<hr/>
            <a href="registrar.jsp" ><button type="button" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-pencil"></span>Registrarse</button></a>
  		<button type="submit" value="Ingresar" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-lock"></span>Iniciar Sesi&oacute;n</button>
                <br><br>
                <a href="enviarPass.jsp"><button type="button" class="center-block btn btn-danger btn-lg"><span class="glyphicon glyphicon-hand-right"></span>&iquest;Olvid&oacute; su password&#63;</button>
		<p></a><br/></p>
                </form>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
  </body>
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
