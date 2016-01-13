'use strict';
function pintaTiempos(){
  var pinta = document.getElementById('pinta');
  var tipo = document.getElementsByName('tipoExa');
  var valor;
  for(var i=0;i<tipo.length;i++){
    if(tipo[i].checked){
      valor = tipo[i].value;
      break;
    }
  }
  if(valor === "abierto"){
    pinta.innerHTML='Requiero dos fechas con sus horas';
  }else if (valor === 'hrespc') {
    pinta.innerHTML='Requiero fecha y hora inicio';
  }
}
