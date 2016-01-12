'use strict';
function pintaTiempos(){
  var pinta = document.getElementById('pinta');
  var valor = document.getElementsByName('tipoExa').value;
  if(valor === "abierto"){
    alert('abierto');
  }else if (valor === 'hrespc') {
    alert('cerrado');
  }
}
