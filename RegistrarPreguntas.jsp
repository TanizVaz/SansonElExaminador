<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Registro de banco de preguntas</title>
</head>
<body>
  Clave de tu examen<input type="claveExamen" ><br>
  Ingrese su pregunta
  <input type="text" name="pregunta">

  <div name="preguntas">
<form  action="index.html" method="GET">


    <div name="pregunta0">
      <p>
        Tipo de pregunta
    <input type="radio" name="tipo" value="VerFal" onchange="cambioRadio()">Verdadero o Falso
    <input type="radio" name="tipo" value="OpcionesPer" onchange="cambioRadio()">Opci&oacute;n m&uacute;ltiple
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

  <script src="js/RegistrarBanco.js"></script>
</body>
</html>
