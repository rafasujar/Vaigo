var abierto = false;
var a = document.getElementById("dropdown-content");

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function FiltroFunction() {
    event.stopPropagation();

    if (!abierto) {
        window.scrollTo(0, 0);
        a.classList.toggle("show-2");
        a.style = "display:block;"
        abierto = true;
        document.body.style.overflow = "hidden";
    } else {
        window.scrollTo(0, 0);
        window.setTimeout(removethis()
            , 500);
        a.classList.toggle("show-2-out");
        abierto = false;
    }

}

function removethis() {
    a.classList.toggle("show-2");
    a.classList.toggle("show-2-out");
    a.style = "display:none;"
    document.body.style.overflow = "auto";
}

window.addEventListener('resize', function () {
    if (window.innerWidth >= 800) {
        a.style = "display:block;"
    }
    if (window.innerWidth <= 800) {
        a.style = "display:none;"
    }
})

let selectpanes = document.getElementById("planes");
let selectciudaes = document.getElementById("ciudades");
let selectpaises = document.getElementById("paises");
let selectterrenos = document.getElementById("terrenos");
let selecttransportes = document.getElementById("transportes");
let padreviajes = document.querySelector("div#viajes-request");
window.addEventListener('load', function (e) {


    if (window.location.toString().includes("?")) {
        let url = window.location.toString();
        let urlParams = new URLSearchParams(url.split('?')[1]);
        let planes = urlParams.get('planes');
        let ciudad = parseInt(urlParams.get('ciudad'));
        let pais = parseInt(urlParams.get('pais'));
        let terreno = parseInt(urlParams.get('terreno'));
        let transporte = parseInt(urlParams.get('transporte'));
        selectpanes.value = planes;
        cargarfiltros("ciudades", ciudad);
        cargarfiltros("paises", pais);
        cargarfiltros("terrenos", terreno);
        cargarfiltros("transportes", transporte);
        filtrar(planes, ciudad, pais, terreno, transporte);
    } else {
        cargarfiltros("ciudades", 0 );
        cargarfiltros("paises", 0);
        cargarfiltros("terrenos", 0);
        cargarfiltros("transportes", 0);
        fetch("http://localhost:8888/explorar/todo").then(response => response.json()).then(data => {
            creacionViajes(data);
        }).catch(error => console.error(error));
    }
});
function crearElementoTexto( texto ,tipo , padre , valor ) {
    let elemento = document.createElement(tipo);
    if (texto != null ){
        elemento.textContent = texto;
    }
    padre.appendChild(elemento);
    if (texto != null ){
        elemento.value = valor;
    }

    return elemento;
}

function cargarfiltros(url,  valor){
    fetch("http://localhost:8888/api/"+url)
        .then(response => response.json()).then(data => {
        switch (url) {
            case "ciudades":
                selectciudaes.innerHTML = "<option value='0'>Todos</option>";
                data.forEach(element => {
                    crearElementoTexto(element.ciudad, "option", selectciudaes, element.id);
                });
                selectciudaes.value = valor;
                break;
            case "paises":
                let paises = data;
                selectpaises.innerHTML = "<option value='0'>Todos</option>";
                paises.forEach(element => {
                    crearElementoTexto(element.pais, "option", selectpaises, element.id);
                });
                selectpaises.value = valor;

                break;

            case "terrenos":
                selectterrenos.innerHTML = "<option value='0'>Todos</option>";
                let terrenos = data;
                terrenos.forEach(element => {
                    crearElementoTexto(element.tipo, "option", selectterrenos, element.id);
                });
                selectterrenos.value = valor;
                break;

            case "transportes":
                selecttransportes.innerHTML = "<option value='0'>Todos</option>";
                let transportes = data;
                transportes.forEach(element => {
                    crearElementoTexto(element.tipo, "option", selecttransportes, element.id);
                });
                selecttransportes.value = valor;
                break;


            default:
                break;

        }
    }).catch(error => console.error('Error:', error));}



 function creacionViajes(data){
    data.forEach(element => {
        let contenedorviaje = document.createElement("div");
        padreviajes.appendChild(contenedorviaje);
        //poner el id al contenedor
        contenedorviaje.id = "viaje=" + element.id;
        //div > img
        let imagen = document.createElement("img");
        imagen.src = "../" + element.path;
        contenedorviaje.appendChild(imagen);
        //div > div
        let contenedorinfo = document.createElement("div");
        contenedorviaje.appendChild(contenedorinfo);
        let div1 = document.createElement("div");
        contenedorinfo.appendChild(div1);
        //div > div > h2
        let titulo = document.createElement("h2");
        titulo.textContent = element.ciudad;
        div1.appendChild(titulo);
        //div > div > p
        let descripcion = document.createElement("p");
        descripcion.textContent = element.descripcion;
        div1.appendChild(descripcion);
        //div > div > div+ hr
        let hr = document.createElement("hr");
        contenedorinfo.appendChild(hr);
        hr.classList.add("vertical");
        //div > div > div +hr+ div
        let contenedoretiquetas = document.createElement("div");
        contenedorinfo.appendChild(contenedoretiquetas);
        //div > div > div +hr+ div > div
        let etiquetas = document.createElement("div");
        contenedoretiquetas.appendChild(etiquetas);
        //div > div > div +hr+ div > div + div
        let etiquetas2 = document.createElement("div");
        contenedoretiquetas.appendChild(etiquetas2);
        //div > div > div +hr+ div > div > p +  p
        let p = document.createElement("p");
        p.textContent = element.pais;
        etiquetas2.appendChild(p);
        //div > div > div +hr+ div > div > p +  p
        let p2 = document.createElement("p");
        p2.textContent = element.terreno;
        etiquetas2.appendChild(p2);
        contenedorviaje.addEventListener('click', function (e) {
            window.location = "http://localhost:8888/seleccionDestino?"+element.id;
        });
    });
}

function filtrar(planes, ciudad, pais, terreno, transporte){
    const body = {
        planes: planes,
        ciudad: ciudad,
        pais: pais,
        terreno: terreno,
        transporte: transporte
    }
    fetch("http://localhost:8888/explorar/filtro", {
        method: 'POST',
        body: JSON.stringify(body),
        headers: {
            'Content-Type': 'application/json'
        }
    }).then(response => response.json()).then( data => {
        if (!JSON.stringify(data).includes("false")) {
            padreviajes.innerHTML = "";
            creacionViajes(data);
        }else {
          padreviajes.innerHTML = "<h1>No hay viajes con esos filtros</h1>";
        }

    }).catch(error => console.error(error));
}

selectpanes.addEventListener('change', function (e) {
    let planes = selectpanes.value;
    let ciudad = selectciudaes.value;
    let pais = selectpaises.value;
    let terreno = selectterrenos.value;
    let transporte = selecttransportes.value;
    filtrar(planes, ciudad, pais, terreno, transporte);
});
selectciudaes.addEventListener('change', function (e) {
    let planes = selectpanes.value;
    let ciudad = selectciudaes.value;
    let pais = selectpaises.value;
    let terreno = selectterrenos.value;
    let transporte = selecttransportes.value;
    filtrar(planes, ciudad, pais, terreno, transporte);
});
selectpaises.addEventListener('change', function (e) {
    let planes = selectpanes.value;
    let ciudad = selectciudaes.value;
    let pais = selectpaises.value;
    let terreno = selectterrenos.value;
    let transporte = selecttransportes.value;
    filtrar(planes, ciudad, pais, terreno, transporte);
});
selectterrenos.addEventListener('change', function (e) {
    let planes = selectpanes.value;
    let ciudad = selectciudaes.value;
    let pais = selectpaises.value;
    let terreno = selectterrenos.value;
    let transporte = selecttransportes.value;
    filtrar(planes, ciudad, pais, terreno, transporte);
});
selecttransportes.addEventListener('change', function (e) {
    let planes = selectpanes.value;
    let ciudad = selectciudaes.value;
    let pais = selectpaises.value;
    let terreno = selectterrenos.value;
    let transporte = selecttransportes.value;
    filtrar(planes, ciudad, pais, terreno, transporte);
});
