var selection = document.getElementById('selection');
var icono = document.getElementById('icono-girar');
var abierto = false;

selection.addEventListener('click',function(event){
    event.stopPropagation();
    
    if(!abierto){
        icono.classList.toggle("girar");
        abierto = true;
        selection.style = "border-radius: 10px 10px 10px 0"
    }else{
        icono.classList.toggle("girar2");
        abierto = false
        selection.style = "border-radius: 10px"
        window.setTimeout(function(){
            icono.classList.toggle("girar2");
            icono.classList.toggle("girar");
        },300)
    }
        
})

document.addEventListener('click',function(){
    if(abierto){icono.classList.toggle("girar2");
        abierto = false
        selection.style = "border-radius: 10px"
        window.setTimeout(function(){
            icono.classList.toggle("girar2");
            icono.classList.toggle("girar");
        },300)
    }
});

