

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
  alert(resultado);
}
