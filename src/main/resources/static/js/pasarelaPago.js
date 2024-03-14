
window.addEventListener("load", function (event)  {


let datosRecoje=JSON.parse(localStorage.getItem("datospasa"));
let datosHotel=JSON.parse(localStorage.getItem("datoshotel"));


let boton=document.getElementById('submit');

boton.addEventListener('click',function(){

swal({
  title: "Pago realizado con exito",
  icon: "success"
});
setTimeout( function(){
window.location.href="http://localhost:8888/";

},400)

});


let url1 = "http://localhost:8888/api/Hotelid?dato="+datosHotel.hotel_id+"";
                        fetch(url1, {
                            method: "GET",
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                            .then(response => response.json() )
                            .then(data => {

                            let data1=data
                            let url2 = "http://localhost:8888/api/ViajeId?dato="+datosRecoje.viaje_id+"";
                                                    fetch(url2, {
                                                        method: "GET",
                                                        headers: {
                                                            "Content-Type": "application/json"
                                                        }
                                                    })
                                                        .then(response => response.json() )
                                                        .then(dat => {

                                                        let data2=dat

                                       let url3 = "http://localhost:8888/ItiID?dato="+datosRecoje.itinerario_id+"";
                                                          fetch(url3, {
                                                         method: "GET",
                                                            headers: {
                                                                "Content-Type": "application/json"
                                                         }
                                                     })
                                                            .then(response => response.json() )
                                                            .then(da => {

                                                            let data3=da


                                                            Cambios(data1,data2,data3);
                                                            })

                                                          })
                            })


});

function Cambios(data1,data2,data3){

let nomhote=document.getElementById('hotel');

nomhote.textContent=data1.nombre;

let prehote=document.getElementById('hotelpre');

prehote.textContent=data1.precio.toFixed(2)+'€';
let precio=0;

 let url4 = "http://localhost:8888/api/TransporteId?dato="+data2.idTransporte+"";
                        fetch(url4, {
                            method: "GET",
                            headers: {
                                "Content-Type": "application/json"
                            }
                        })
                            .then(response => response.json() )
                            .then(data4 => {


                        let tra=document.getElementById('trans');
                        tra.textContent=data4.tipo;
                        let tran=document.getElementById('prectra');
                         tran.textContent=data4.precio.toFixed(2)+'€';
                         let total=document.getElementById('total');
                            let todo=data1.precio+data4.precio;

                            let cont=0;
                            for(let i = 0; i < data3.length; i++){
                            let url5 = "http://localhost:8888/api/ExcursionId?dato="+data3[i].idExcursion+"";
                                                    fetch(url5, {
                                                        method: "GET",
                                                        headers: {
                                                            "Content-Type": "application/json"
                                                        }
                                                    })
                                                        .then(response => response.json() )
                                                        .then(data5 => {

                                                        cont+=1;
                                                       precio+=data5.precio;

                                                       let acti=document.getElementById('acti2');

                                                       acti.textContent=precio.toFixed(2)+'€';
                                                       let act=document.getElementById('acti');

                                                               act.textContent=precio.toFixed(2)+'€';
                                                               todo+=data5.precio;


                                                               if(cont==3){


                                                               let totalbien=todo*datosHotel.persona;
                                                                total.textContent=totalbien.toFixed(2)+'€';
                                                               }

                                                        })
                                                        }
                                                        let datosHotel=JSON.parse(localStorage.getItem("datoshotel"));
                                                        let perso=document.getElementById('per');

                                                        perso.textContent=datosHotel.persona;

                            })









}

