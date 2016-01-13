<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Examen generado</title>
  </head>
  <body onload="mueveReloj()">
      <input type="hidden" name="reloj" size="5" value="16:05" id="muestReloj" readonly><!--Este value debe llegar desde java-->
      <div id="pintaReloj"></div>
      <!-- Primero consulta Banco del que se hace examen-->
      <!-- email del que se hace Examen-->
      <!-- Generamos preguntas Obligatorias hasta satisfacer cuenta -->
      <!-- Hacemos Preguntas Opcionales hasta satisfacer cuenta -->
      <!-- enviamos comparando respuesta dada con correcta contamos y metemos en tabla -->


  <script src="js/ExamenGenerado.js"></script>
  </body>

</html>
