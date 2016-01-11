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
<TITLE>Cuenta</TITLE>
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
					<a href="#" class="navbar-brand">Plataforma de ex&#225;menes</a>
				</div>
				<div class="collapse navbar-collapse" id="navegacion-fm">
					<ul class="nav nav-pills">
						<li><a href="index.jsp">Inicio</a></li>
						<li class="dropdown">
							<a href="tutos.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button">
								Tutoriales <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Crear una cuenta</a></li>
								<li><a href="#">Ingresar a un evento</a></li>
								<li><a href="#">Consultar el foro de preguntas</a></li>
							</ul>
						</li>
						<li><a href="preguntas.jsp">Foro de preguntas </a></li>
						<li><a href="#">Soporte</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>


	  	<section class="col-md-3 hidden-xs hidden-sm">
		<br>
		<img src="id.jpg" align="center" class="img-rounded" alt="id" width="180" height="170">
				<h4>Men&#250;</h4>
				<div class="list-group">
					<a href="#" class="list-group-item">Mis Eventos</a>
					<a href="participanteSearch.jsp" class="list-group-item">B&#250;squeda de eventos</a>
					<a href="#" class="list-group-item ">Eventos</a>
					<a href="participanteCuenta.jsp" class="list-group-item  active">Administrar cuenta</a>
				</div>
			</section>

 			<br>

					<fieldset>
			<legend><div class="col-xs-12"><h3>Cambiar contrase&#241;a de recuperaci&#243;n del participante</h3></legend>
			<label class="col-sm-2 control-label" for="fecha"> </label>
		  </fieldset>
		  <br>
        </div>
		<form class="form-horizontal" action="newpass" method="POST">
			<br>
	<form role="form">
  		<div class="form-group">
                    <label class="col-sm-3 control-label" for="Email">E&#45;mail&#58;</label>
                    <div class="input-group col-sm-3">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
  			<input type="email" class="form-control" id="email" name="email" placeholder="E&#45;mail" required="required">
                    </div>           
		  <br>
      <label class="col-sm-3 control-label" for="pwd1">Password&#58;</label>
      <div class="input-group col-sm-3">
<span class="input-group-addon">
<span class="glyphicon glyphicon-lock"></span></span>
<input type="password" class="form-control"  id="pwd1" name="pwd1" placeholder="Password" required="required" onkeyup="return checkPassword();" >

</div>
<br>

      <label class="col-sm-3 control-label" for="password2">Confirmar password&#58;</label>
      <div class="input-group col-sm-3">
<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
<input type="password"  class="form-control" id="pwd2" name="pwd2" placeholder="Password" required="required" onkeyup="return checkPassword();">
</div>
<br><br>
<label class="col-sm-5 control-label"></label>
<div class="input-group col-sm-3">
<button type="submit" class="center-block btn btn-success btn-lg" id="elboton" value="Enviar"><span class="glyphicon glyphicon-floppy-disk" ></span> Guardar</button>
</div>
<br>
<span id="msg"></span>
		  <br>
		
		</div>
  		</div> 
			</div>

	<br> <br><br><br><br>
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
						<li><a href="#">Administrar cuenta</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
  function checkPassword(){
    var password=document.getElementById("pwd1");
  var password2=document.getElementById("pwd2");
  var elboton = document.getElementById("elboton");
  var msg;
  var camosValidos = false;
  elboton.disabled=true;
  if(/[ ]/.test(password.value)) {
      msg="Error: El password no debe contener espacios!";
    document.getElementById("msg").innerHTML=msg;
    return false;
    }
  if(password.value.length < 8) {
      msg="Error: Debe ingresar por lo menos 8 caracteres";
    document.getElementById("msg").innerHTML=msg;
    return false;
    }
  if(!/[a-z]/.test(password.value)) {
      msg="Error: Su password debe contener letras min&uacute;sculas (a-z)";
    document.getElementById("msg").innerHTML=msg;
    return false;
    }
  if(!/[A-Z]/.test(password.value)) {
      msg="Error: Su password debe contener letras may&uacute;sculas (A-Z)";
    document.getElementById("msg").innerHTML=msg;
    return false;
    }
    if(!/[0-9]/.test(password.value)) {
      msg="Error: Su password n&uacute;meros)";
    document.getElementById("msg").innerHTML=msg;
    return false;
    }
  if(!/[^a-z0-9A-Z ]/.test(password.value)) {
      msg="Error: Debe contener caracteres especiales como # o _ etc&eacute;tera";
    document.getElementById("msg").innerHTML=msg;
    return false;
    }
  if(! (password.value == password2.value)){
      msg="Error: Los password no coinciden";
      //document.getElementById("msg").innerHTML=msg+"  "+ password.value+" p2 " +password2.value;
       document.getElementById("msg").innerHTML=msg;
      camposValidos=false;
      elboton.disabled=true;
      return false;
  }else{
      msg="Puede proceder password valido";
      document.getElementById("msg").innerHTML=msg;
      elboton.disabled=false;
      return false;
  }
  document.getElementById("msg").innerHTML=msg;
}

</script>

<body>
</body>
</html>
