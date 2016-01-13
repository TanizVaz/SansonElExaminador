'use strict';
var tiempo = document.getElementById('muestReloj').value;
var tiempoArray = tiempo.split(':');
var min = Number(tiempoArray[0]);
var seg = Number(tiempoArray[1]);
var rojo = '<font-color="red"';
function mueveReloj(){
   //console.log(min+'Segs   '+ seg);
   if(min >= 1){
   if(seg === 0){
     seg = Number(59);
     min -= 1;
   }
 }else if( min === 0 && seg === 0){
   alert('Ha llegado tu hora');
 }
 if(min >= 0 && seg > 0){
    seg--;
   	setTimeout("mueveReloj()",1000);
  }
    //document.getElementById('muestReloj').value = min.toString()+':'+seg.toString();
    if( min <=10 ){

    }
    document.getElementById('pintaReloj').innerHTML = min.toString()+':'+seg.toString();
}
