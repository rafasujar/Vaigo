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
     .then(data =>{datosUsu(data)})
});

function datosUsu(data){
let nombre=document.getElementById('nombre1');
let mail=document.getElementById('correo1');
let contra=document.getElementById('password1');
console.log(data.username);
nombre.setAttribute('value',data.username);
mail.setAttribute('value',data.correo);
contra.setAttribute('value',data.password);

}