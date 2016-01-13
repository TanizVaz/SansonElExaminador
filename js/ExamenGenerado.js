'use strict';
var tiempo = document.getElementById('muestReloj').value;
var tiempoArray = tiempo.split(':');
var min = Number(tiempoArray[0]);
var seg = Number(tiempoArray[1]);
var rojo = '<font color="red">';
var rojocerrado ='</font>';
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
    //document.getElementById('muestReloj').value = min.toString()+':'+seg.toString();
    if( min <=15 ){
      document.getElementById('pintaReloj').innerHTML = rojo+ +min.toString()+':'+seg.toString()+rojocerrado;
    }else{
    document.getElementById('pintaReloj').innerHTML = + min.toString()+':'+seg.toString();
    }
    if(min >= 0 && seg > 0){
       seg--;
       setTimeout("mueveReloj()",1000);
     }


}
