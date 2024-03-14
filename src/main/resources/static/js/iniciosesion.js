document.getElementById("login").addEventListener("click", function(){

    let name = document.getElementById("nombre1").value;
    let password = document.getElementById("nombre2").value;
    if (isvalid(name, "correo")) {

        if (isvalid(password, "password")) {

    let  data = { "correo": name, "password": password };
    let url = "http://localhost:8888/api/iniciosesion";

    fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body:  JSON.stringify(data)
    })
        .then(response => response.json() )
        .then(data =>{

        response(data);
        }
         )
        .catch(error => console.error("Error:", error));
    }
}
});

function response(data) {

    let respuesta = JSON.stringify(data);
    let name = document.getElementById("nombre1").value;
        let password = document.getElementById("nombre2").value;

    let  data2 = { "correo": name, "password": password };
    console.log(data2);


    if (respuesta == "true") {

        fetch("http://localhost:8888/api/obtenerusuario",
        {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(data2)
        }).then(response => response.json())
        .then(data => {

            let usuario = {
                    "id":data.id,
                "username": data.username,
                "correo": data.correo
            }
          localStorage.setItem("usuario1", JSON.stringify(usuario));

window.location.href="http://localhost:8888/";
        })


    } else {
        document.getElementById("error").textContent = "Usuario o contraseña incorrectos";
    }
}
function isvalid(valor, param) {

    switch (param) {
        case "correo":
            if (valor == '') {
                document.getElementById("error").textContent = "El campo correo no puede estar vacío";
                return false;
            }
            if (!/^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/.test(valor)) {
                document.getElementById("error").textContent = "El campo correo no puede tener menos de 3 caracteres";
                return false;
            }

            break;
        case "password":

            if (valor == '') {
                document.getElementById("error").textContent = "El campo password no puede estar vacío";
                return false;
            }

            if((/^!(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{5,10}$)/).test(valor)){
                document.getElementById("error").textContent = "La contraseña debe tener entre 5 y 10 caracteres, y debe contener un numero y una letraº";
                return false;
            }
            break;

            default:
                return true;
                break;
    }
    document.getElementById("error").textContent = "";
    return true;
}