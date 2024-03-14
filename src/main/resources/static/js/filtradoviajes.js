let selectpanes = document.getElementById("planes");
let selectciudaes = document.getElementById("ciudad");
let selectpaises = document.getElementById("pais");
let selectterrenos = document.getElementById("terreno");
let selecttransportes = document.getElementById("transporte");

window.addEventListener('load', function () {

    cargarfiltros("ciudades");
    cargarfiltros("paises");
    cargarfiltros("terrenos");
    cargarfiltros("transportes");
});


function crearElementoTexto( texto ,tipo , padre , valor ) {
    let elemento = document.createElement(tipo);
    elemento.textContent = texto;
    padre.appendChild(elemento);
    elemento.value = valor;
    return elemento;
}

function cargarfiltros(url){
    fetch("http://localhost:8888/api/"+url)
        .then(response => response.json()).then(data => {
        switch (url) {
            case "ciudades":
                selectciudaes.innerHTML = "<option value='0'>Todos</option>";
                data.forEach(element => {
                    crearElementoTexto(element.ciudad, "option", selectciudaes, element.id);
                });
                break;
            case "paises":
                let paises = data;
                selectpaises.innerHTML = "<option value='0'>Todos</option>";
                paises.forEach(element => {
                    crearElementoTexto(element.pais, "option", selectpaises, element.id);
                });
                break;

            case "terrenos":
                selectterrenos.innerHTML = "<option value='0'>Todos</option>";
                let terrenos = data;
                terrenos.forEach(element => {
                    crearElementoTexto(element.tipo, "option", selectterrenos, element.id);
                });
                break;

            case "transportes":
                selecttransportes.innerHTML = "<option value='0'>Todos</option>";
                let transportes = data;
                transportes.forEach(element => {
                    crearElementoTexto(element.tipo, "option", selecttransportes, element.id);
                });
                break;


            default:
                break;

        }
    }).catch(error => console.error('Error:', error));}



document.getElementById("filtrar").addEventListener("click", function () {
        let link = "http://localhost:8888/explorar?";
        link += "planes=" + selectpanes.value;
        link += "&ciudad=" + selectciudaes.value;
        link += "&pais=" + selectpaises.value;
        link += "&terreno=" + selectterrenos.value;
        link += "&transporte=" + selecttransportes.value;
        window.location.href = link;
    }
);

document.getElementById("btn1").addEventListener("click", function () {
    window.location.href = "http://localhost:8888/explorar";
});