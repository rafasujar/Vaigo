window.addEventListener("load", function (event)  {

if (JSON.parse(localStorage.getItem('usuario1')) !== null) {
    // El localStorage existe, puedes realizar acciones adicionales aquí
    var valorAlmacenado = JSON.parse(localStorage.getItem('usuario1'));
    console.log('El valor almacenado es: ', valorAlmacenado);
    let login=document.getElementById('ini');
    let regi=document.getElementById('regi');
    let perf=document.getElementById('perfil2');
    let padre= document.getElementById('profileDropdown');
    perf.href="http://localhost:8888/perfilUsuario?"+valorAlmacenado.id;

    let a=document.createElement('a');
    a.textContent='Cerrar Sesion';

    a.addEventListener('click',function(){
     localStorage.setItem("usuario1", null);
    window.location.href="http://localhost:8888/";
    })

    regi.remove();
    login.remove();
    padre.appendChild(a);

} else {
    // El localStorage no existe o no tiene un valor para la clave 'miClave'
    console.log('El localStorage no tiene un valor para la clave "miClave".');
}
});

document.addEventListener('DOMContentLoaded', function () {


    var ilustracion = document.getElementById('ilustracion');
    var rectangle1 = document.getElementById('Rectangle1');
    var rectangle3 = document.getElementById('Rectangle3');
    
    var explorarMovil = document.getElementById('explorar-a');

    var abierto = false;
    var profileAbierto = false;
    var explorarAbierto = false;

    var explorar2 = false;

    document.getElementById("ilustracion").addEventListener('click',function(){
        document.getElementById('explorar-dropdown-2').style = "display:none;";
    });

    document.getElementById("profile").addEventListener('click',function(){
        document.getElementById('explorar-dropdown-2').style = "display:none;";
    });

    explorarMovil.addEventListener('click', function (event) {
        event.stopPropagation();
        if(!explorar2){
            document.getElementById('explorar-dropdown-2').style = "display:block;";
        }
    });

    document.addEventListener('click',function(){
        document.getElementById('explorar-dropdown-2').style = "display:none;";
    });


    function myFunction(event) {
        event.stopPropagation();
        abierto = !abierto;
        updateDropdown("myDropdown", abierto, rectangle1, rectangle3);
    }

    function explorarFunction(event) {
        event.stopPropagation();
        explorarAbierto = !explorarAbierto;
        updateDropdown("explorarDropdown", explorarAbierto);
    }

    function profileFunction(event) {
        event.stopPropagation();
        profileAbierto = !profileAbierto;
        updateDropdown("profileDropdown", profileAbierto);

        // Reset the animation for the myFunction SVG
        abierto = false;
        updateDropdown("myDropdown", abierto, rectangle1, rectangle3);
    }

    function updateDropdown(dropdownId, isOpen, customRectangle1, customRectangle3) {
        var dropdown = document.getElementById(dropdownId);
        var defaultRectangle1 = rectangle1;
        var defaultRectangle3 = rectangle3;

        if (customRectangle1 && customRectangle3) {
            defaultRectangle1 = customRectangle1;
            defaultRectangle3 = customRectangle3;
        }

        if (isOpen) {
            defaultRectangle1.style.transform = "translate(0px,21px)";
            defaultRectangle3.style.transform = "translate(0px,-21px)";
        } else {
            defaultRectangle1.style.transform = "translate(0px,-6px)";
            defaultRectangle3.style.transform = "translate(0px,6px)";
        }

        dropdown.classList.toggle("show", isOpen);
    }

    document.addEventListener('click', function (event) {
        if (abierto) {
            updateDropdown("myDropdown", false);
            abierto = false;
        }

        if (profileAbierto) {
            updateDropdown("profileDropdown", false);
            profileAbierto = false;
        }

        if (explorarAbierto) {
            updateDropdown("explorarDropdown", false);
            explorarAbierto = false;
        }
    });

    ilustracion.addEventListener('click', function (event) {
        event.stopPropagation();
        abierto = !abierto;
        updateDropdown("myDropdown", abierto);
    });

    var explorarBtn = document.getElementById('explorar-btn');
    explorarBtn.addEventListener('click', function (event) {
        event.stopPropagation();
        explorarAbierto = !explorarAbierto;
        updateDropdown("explorarDropdown", explorarAbierto);
    });

    // Separate event listener for the profile button
    var profileDropdownBtn = document.querySelector('.profile-dropdown .dropbtn');
    profileDropdownBtn.addEventListener('click', profileFunction);

    // Separate event listener for the profile SVG
    var profileSVG = document.querySelector('.profile');
    profileSVG.addEventListener('click', function (event) {
        event.stopPropagation();
        // Animation code for the profile SVG if needed
        profileFunction(event);
    });
});
