  <html>
  <head>
    <meta charset="utf-8">
    <title>Registra informaci&oacute;n de tu banco de preguntas</title>
  </head>
  <body>
<form class="" action="index.html" method="post">
  <input type="hidden" name="categoriaNum" value="1">
    Nombre del banco: <input type="text" name="banco" placeholder="Conjunto de preguntas asociadas"><br>
    <!--El email debería estar como oculto o solicitarlo de la sesion -->
    <div name="categoria0" >
			Especifiaciones por categoria<br><br>
			Categoria <input type="text" name="nombreCat0" placeholder="Ponle un nombre"><br><br>
			N&uacute;mero de preguntas Obligatorias  <input type="number" name="nameObl0" value=""><br>

			N&uacute;mero de preguntas Opcionales <input type="number" name="nameOpc0" value=""><br><br>
			<div id="categorias">	</div>
			<input type="button" value="Agregar categor&iacute;a" id="addCategoria" onclick="addCat()">

			<br><br><br><br>

			Examen al que se unen <input type="text" name="examen" ><br><br><br><br>


		</div>
  </form>
	<script src="js/RegistrarBanco.js"></script>
  </body>
</html>
