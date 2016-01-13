
var contadorPreguntas=1;
var sel = document.getElementById('selection');

var contenedorPreguntas = document.getElementById('preguntas');
var pregunta,categoria,tipo,obligatoria,vf,opcPer;


var cadenaTempo="";
function addingPregunta() {
  document.getElementById('noPreguntas').value='"'+contadorPreguntas+'"';
  pregunta = '"pregunta'+contadorPreguntas.toString()+'"';
  categoria = '"categoria'+contadorPreguntas.toString()+'"';
  tipo = '"tipo'+contadorPreguntas.toString()+'"';
  obligatoria = '"obligatoria'+contadorPreguntas.toString()+'"';
  correcto = '"correcto'+contadorPreguntas.toString()+'"';
  vf = '"VF'+contadorPreguntas.toString()+'"';
  opcPer = '"OpcionesPer'+contadorPreguntas.toString()+'"';
  contadorPreguntas++;
//A esto le metes bootstrap plox :3
  contenedorPreguntas.innerHTML +='<div name='+pregunta+'> <p>      <input type="text" name='+ categoria +' placeholder="categoria"><br>      Tipo de pregunta  <input type="radio" name='+tipo+' value="VerFal" onchange=+"cambioRadio()">Verdadero o Falso  <input type="radio" name='+tipo+' value="OpcionesPer" onchange="cambioRadio()">Opci&oacute;n m&uacute;ltiple  <input type="checkbox" name='+obligatoria+' > Obligatoria  </p>    <div id='+correcto+'>      <!-- Aqui pondré las opciones para seleccionar Correcta y llenar campo opciones y sel correcta-->    </div></div>' ;

  console.log(contadorPreguntas);

}

function cambioRadio(){
  for(var i = 0; i < contadorPreguntas; i++){

    var selection = document.getElementsByName('tipo'+i.toString());//Selecciono cada radio button
      for (var j = 0; j < selection.length; j++) {
        console.log(j);
        if(selection[j].checked && selection[j].value === 'VerFal'){
          var divCambiar = document.getElementById('correcto'+i.toString());
          divCambiar.innerHTML='<p> Elije la respuesta correcta <input type="radio" name='+'"VF'+i.toString()+'"'+'" value="verdadero">Verdadero<input type="radio" name='+'"VF'+i.toString()+'"'+' value="falso">Falso</p>';
          continue;
        }else if (selection[j].checked && selection[j].value === 'OpcionesPer') {
          var divCambiar = document.getElementById('correcto'+i.toString());
          divCambiar.innerHTML='  <p><input type="text" name="textoPregunta1" value=""><input type="radio" name="VF" value="opc1"><br>        <input type="text" name="textoPregunta2" value=""><input type="radio" name="VF" value="opc2"><br>        <input type="text" name="textoPregunta3" value=""><input type="radio" name="VF" value="opc3"><br>        <input type="text" name="textoPregunta4" value=""><input type="radio" name="VF" value="opc3"><br></p>';
          continue;
          }
      }
      console.log(j);

  }//termina recorrido por numero de preguntas

}
