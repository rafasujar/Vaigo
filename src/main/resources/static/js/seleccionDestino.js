let selector= document.getElementById("selector");
window.addEventListener("load", function (event)  {
 let url = window.location.toString();
  url = url.replace("?", "/");
 // Concatena el dato como parámetro en la URL
 fetch(url, {
     method: "GET",
     headers: {
         "Content-Type": "application/json"
     }
 })
     .then(response => response.json())
     .then(data => VerIti(data))

});

function VerIti(data){

let descrip=document.getElementById("resumen");
descrip.textContent=data.descripcion;

let ida=document.getElementById("fida");
let vuelta=document.getElementById("fvol");

ida.value=data.ida;
vuelta.value=data.vuelta;

let ciudad=data.idCiudad;
let url3 = "http://localhost:8888/api/ciudad?dato="+data.idCiudad+"";
                        fetch(url3, {
                            method: "GET",
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                            .then(response => response.json() )
                            .then(data => {
                            Ciudad(data)
                            })
 let url4 = "http://localhost:8888/api/ViajeImg?dato="+data.id+"";
                        fetch(url4, {
                            method: "GET",
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                            .then(response => response.json() )
                            .then(data => {
                            Img(data)
                            })

let url2 = "http://localhost:8888/ViaCiu?dato="+data.idCiudad+"";
                        fetch(url2, {
                            method: "GET",
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                            .then(response => response.json() )
                            .then(data => {
                            TransporteYhotel(data,ciudad)
                            })


}
function Ciudad(data){
let ciu=document.getElementById('ciu');
ciu.textContent=data.ciudad;
}

function Img(data){

let imgdata="../"+data.url;
let img=document.getElementById('img');
img.setAttribute('src',imgdata);

}

function TransporteYhotel(data,ciudad){


let selector=document.getElementById('trans');
let selector2=document.getElementById('hoteles');

for (let i = 0; i < data.length; i++) {
                    let url4 = "http://localhost:8888/api/TransporteId?dato="+data[i].idTransporte+"";
                                            fetch(url4, {
                                                method: "GET",
                                                headers: {
                                                    "Content-Type": "application/json"
                                                }
                                            })
                                                .then(response => response.json() )
                                                .then(data4 => {

                                                crearElementoTexto(data[i].idTransporte,data4.tipo, 'option', selector);
                                                })

                }
                 let url5 = "http://localhost:8888/HotelCiu?dato="+ciudad+"";
                                                            fetch(url5, {
                                                                method: "GET",
                                                                headers: {
                                                                    "Content-Type": "application/json"
                                                                }
                                                            })
                                                                .then(response => response.json() )
                                                                .then(data5 => {

                                                                for (let i = 0; i < data5.length; i++) {
                                 crearElementoTexto(data5[i].id,data5[i].nombre, 'option', selector2);
                                 }
                                                                })

document.getElementById("confirm").addEventListener("click", function () {
let numperson=document.getElementById('numperson');
let error=document.getElementById('error');
let viaje;
for (let i = 0; i < data.length; i++) {
if(selector.value==data[i].idTransporte){
viaje=data[i];
console.log(viaje);
}
}

   if(numperson.value==''){
    error.textContent='Numero de persona no especificado';
   }else if(numperson.value==0){
   error.textContent='No pueden ir 0 personas al viaje';
   }
   else{
   error.textContent='';
   let datospasa = {
                                   "hotel_id":selector2.value,
                                   "persona":numperson.value

                               }
                               localStorage.setItem("datoshotel", JSON.stringify(datospasa));
    let link = "http://localhost:8888/seleccionItinerario?"+viaje.id;
       window.location.href = link;
   }



});

}

function crearElementoTexto(value = "Ejemplo",texto = "Ejemplo", tipo = "div", padre = contenido) {
    let elemento = document.createElement(tipo);
    elemento.textContent = texto;
    elemento.setAttribute("value", value);
    padre.appendChild(elemento);
    return elemento;
}