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
