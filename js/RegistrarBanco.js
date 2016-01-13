'use strict';
var contadorCategorias=1;
var nombreCat ,nameObl , nameOpc;
function addCat(){
  nombreCat = '"nombreCat'+contadorCategorias.toString()+'"';
  nameOpc = '"nameOpc'+contadorCategorias.toString()+'"';
  nameObl = '"nameObl'+contadorCategorias.toString()+'"';
  var divAumentar = document.getElementById('categorias');
  divAumentar.innerHTML += 'Categoria <input type="text" name='+nombreCat+' placeholder="Ponle un nombre"><br><br>Especifiaciones por categoria<br><br>N&uacute;mero de preguntas Obligatorias  <input type="number" name='+nameObl+'value=""><br> N&uacute;mero de preguntas Opcionales <input type="number" name='+nameOpc+' value=""><br><br>';
  contadorCategorias ++;
  document.getElementsByName('categoriaNum')[0].setAttribute('value',contadorCategorias.toString());
}
