
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

let descrip=document.getElementById("textResume");
descrip.textContent=data.descripcion;

let viaje=data;

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

 let url2 = "http://localhost:8888/ItiEx?dato="+data.idCiudad+"";
                        fetch(url2, {
                            method: "GET",
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                            .then(response => response.json() )
                            .then(data => {
                            VerIti2(data,viaje)
                            })


}

function Img(data){
console.log(data);

let imgdata="../"+data.url;
let img=document.getElementById('imgviaje');
img.setAttribute('src',imgdata);

}

function VerIti2(data,viaje){


let ida=0;
let cont2=1;

for (let i = 0; i < data.length; i++) {
                    if(!(ida==data[i].idItinerario)){
                    crearElementoTexto(data[i].idItinerario,cont2, 'option', selector);
                    cont2+=1;
                    ida=data[i].idItinerario;
                    }
                }
                selector.addEventListener('change',function(){

                let value=selector.value;
                let padre=document.getElementById('exMostrar');
                padre.innerHTML='';
                let datosJson=data;
                let datospasa = {
                                "viaje_id": viaje.id,
                                "itinerario_id": selector.value


                            }
                            localStorage.setItem("datospasa", JSON.stringify(datospasa));

                let url3 = "http://localhost:8888/api/Itinerario?dato="+value+"";
                 fetch(url3, {
                                             method: "GET",
                                             headers: {
                                                 "Content-Type": "application/json"
                                             }
                                         })
                                             .then(response => response.json() )
                                             .then(data => {
                                             CrearComentario(data)
                                             })
                let cont=1;
                    for(let i = 0; i < datosJson.length; i++){
                    const data1 = { "id": datosJson[i].idExcursion};


                    let url = "http://localhost:8888/buscarExcursion";
                        fetch(url, {
                            method: "POST",
                            headers: {
                                "Content-Type": "application/json"
                            },
                            body:  JSON.stringify(data1)
                        })
                            .then(response => response.json() )
                            .then(data => {
                            MostrarExcursiones(data,cont)
                            cont+=1;
                            })


                            }
document.getElementById("confirm").addEventListener("click", function () {
   let link = "http://localhost:8888/pasarelaPago";
    window.location.href = link;
});
                });
}

function MostrarExcursiones(texto = "Ejemplo",cont){

let padre=document.getElementById('exMostrar');
let padre2 = document.createElement('section');
let excursion = document.createElement('h3');
let nombre = document.createElement('p');
let precio = document.createElement('p');
excursion.textContent='Excursion '+cont+':';
nombre.textContent=texto.nombre;
precio.textContent=texto.precio;
padre2.appendChild(excursion)
padre2.appendChild(nombre)
padre2.appendChild(precio)
padre.appendChild(padre2);


}


function crearElementoTexto(value = "Ejemplo",texto = "Ejemplo", tipo = "div", padre = contenido) {
    let elemento = document.createElement(tipo);
    elemento.textContent = texto;
    elemento.setAttribute("value", value);
    padre.appendChild(elemento);
    return elemento;
}
function CrearComentario(data){

let padre=document.getElementById('comentarios-request');
let section = document.createElement('section');
let span = document.createElement('span');
let b = document.createElement('b');
let div = document.createElement('div');
let p = document.createElement('p');
section.setAttribute("id","view-comentarios");
var resultado = data.cometario.match(/^(\w+):\s*(.*)/);

// Verificando si se encontró un nombre
if (resultado && resultado[1]) {
    // Eliminando los espacios sobrantes al principio y final del nombre
    var nombre = resultado[1].trim()+ ":";

    // Guardando el texto restante en otra variable
    var textoRestante = resultado[2].trim();


} else {
    console.log("No se encontró un nombre en el texto.");
}
p.textContent = textoRestante;
b.textContent = nombre;
span.appendChild(b);
div.appendChild(p);
section.appendChild(span);
section.appendChild(div);
padre.appendChild(section);

}