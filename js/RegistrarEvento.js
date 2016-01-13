'use strict';
var selTipo = document.getElementsByName('tipo');
function cambioTipo() {
  if(selTipo[0].value === 'Cerrado'){
    document.getElementById('fechaFin').setAttribute('readonly','true');
    document.getElementById('horaFin').setAttribute('readonly','true');
    console.log('Cerrado');
  }else if(selTipo[0].value ==='Abierto'){
    document.getElementById('fechaFin').setAttribute('readonly','false');
    document.getElementById('horaFin').setAttribute('readonly','false');
    console.log('Abierto');
  }
}
