

var sel = document.getElementById('selection');
var selection = document.getElementsByName('tipo');

console.log(selection.toString());

function addingPregunta() {
  alert('nueva Pregunta');
}
function cambioRadio(){
  var resultado;
  for(var i = 0; i<selection.length;i++){
    if(selection[i].checked){
      resultado = selection[i].value;
      console.log(resultado+'Seleccionado');
      break;
    }else{
      console.log('No select' +selection[i].value);
    }
  }
  if(resultado ==='VerFal'){
    var divCambia = document.getElementById('correcto0');
    console.log(divCambia.toString());
    divCambia.innerHTML='<p> Elije la respuesta correcta <input type="radio" name="VF" value="verdadero">Verdadero<input type="radio" name="VF" value="falso">Falso</p>';
  }else if (resultado ==='OpcionesPer') {
    var divCambia = document.getElementById('correcto0');
    divCambia.innerHTML='  <p><input type="text" name="textoPregunta1" value=""><input type="radio" name="VF" value="opc1"><br>        <input type="text" name="textoPregunta2" value=""><input type="radio" name="VF" value="opc2"><br>        <input type="text" name="textoPregunta3" value=""><input type="radio" name="VF" value="opc3"><br>        <input type="text" name="textoPregunta4" value=""><input type="radio" name="VF" value="opc3"><br></p>';
  }
}
