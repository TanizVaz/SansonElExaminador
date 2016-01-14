 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  	<link rel="stylesheet" href="css/bootstrap.min.css">
  	<link rel="stylesheet" href="css/estilos.css">
  	<link rel="stylesheet" href="css/datepicker.css">
    <title>Registra detalles de tu evento</title>
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
  					<%if (session.getAttribute(Attribute.Session.CURRENT_USER) != null) { %>
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
  <%@include file="mainInstructor.frame.jsp" %>

  <form action="security" method="POST">
    <input type="hidden" name="action" value="RegistrarBanco">
    <input type="hidden" name="categoriaNum" value="1">
    <input type="hidden" name="id" value="<%=((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getId()%>">
      <div class="row container">
       <div class="color2 text-center col-md-offset-1 col-md-8">
         <br>
           <br>
             <article class="col-md-9">
              <h2 class="post-contenido text-justify">
                En este espacio podr&#225;s desarrollar tus ex&#225;menes
              </h2>
               </article>
               <br>
                 <br>
                   <br>
                     <br>
                       <br>
               <p>
                       Nombre del banco:
                  </p>
                   <span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
                   <input type="text" name="banco" class="form-control" placeholder="Conjunto de preguntas asociadas" aria-describedby="basic-addon1">
                 <br>
         Especifiaciones por categoria<br><br>
                  <p>
         Categoria
         </p>
         <span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
         <input type="text" name="nombreCat0" class="form-control" placeholder="Ponle un nombre" aria-describedby="basic-addon1">

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
         </p>
         <span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
         <input type="text" name="examen" class="form-control" placeholder="Ponle un nombre" aria-describedby="basic-addon1">
          <br><button type="submit" class="btn btn-info center-block" value="Enviar" >
         <span class="glyphicon glyphicon-ok"></span>  Enviar</a>
             </button>
             <br>
               <br>
          </div></div></form>
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
    <script src="js/RegistrarBanco.js"> </script>
  </body>
</html>
