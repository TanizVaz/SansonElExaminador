<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Registra detalles de tu evento</title>
  </head>
  <body>
    Nombra tu evento:<input type="text" name="evento"><br><br><br>
    T&iacute;tulo del examen<input type="text" name="examen"><br><br>
    <select name="tipo" onchange="cambioTipo()">
      <option value="">Selecciona</option>
      <option value="Abierto">Abierto</option>
      <option value="Cerrado">Cerrado</option>
    </select> <br><br><br>
    Fecha de apertura <input type="text" name="fechaIni" placeholder="2016-01-12"><br><br>
    Hora de inicio <input type="text" name="horaIni" placeholder="00:00 a 23:59"><br><br>
    <br><br><br><br>
      Fecha de termino <input type="text" name="fechaFin" placeholder="2016-01-12" id="fechaFin"><br><br>
      Hora finalizado <input type="text" name="horaFin" placeholder="00:00 a 23:59" id="horaFin"><br><br>
      <br><br><br><br>
    Duraci&oacute;n : <input type="number" name="dura" max="120" min="15"> <br> <br>
    Tema <input type="text" name="tema"><br> <br>
    Banco <input type="text"  name="banco"><br><br>
    <textarea name="participantes"></textarea>
    <script src="js/RegistrarEvento.js"> </script>
  </body>
</html>
