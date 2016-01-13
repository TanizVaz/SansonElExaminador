<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Registra tu banco de preguntas</title>
  </head>
  <body>
<form class="" action="index.html" method="post">

    Banco: <input type="text" name="banco"><br>
    <!--El email debería estar como oculto o solicitarlo de la sesion -->
    <select name="tipo">
      <option value="Abierto">Abierto</option>
        <option value="Cerrado">Cerrado</option>
    </select>
    <br>
    <div name="categoias">

      Grupos:<input name="categoria0" type="text" placeholder="nombra la categor&iacute;a"><br>
      N&uacute;mero obligatorias <input type="number" name="noObl" min="0"><br>
      N&uacute;mero opcionales <input type="number" name="noOpc" min="0"><br>

    </div>


  </form>

  </body>
</html>
