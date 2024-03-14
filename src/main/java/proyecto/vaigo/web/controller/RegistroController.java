package proyecto.vaigo.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import proyecto.vaigo.Service.UsuariosService;
import proyecto.vaigo.model.dto.UsuariosDTO;

@RestController
public class RegistroController {
    private static final Logger log =
            LoggerFactory.getLogger(RegistroController.class);
    @Autowired
    private UsuariosService usuariosService;
    @GetMapping("/registro")
    public ModelAndView Registro(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("./paginashtml/registro.html");
        return mav;
    }
    @PostMapping("/api/registro")
    public boolean comprobarUsuario (@RequestBody UsuariosDTO usuariosDTO){
        log.info(String.valueOf(usuariosDTO));
        if (!usuariosDTO.getCorreo().matches("^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")){
            return false;
        }
        if (!usuariosDTO.getPassword().matches("^(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{5,10}$)")){
            return false;
        }
        if (usuariosDTO.getUsername().matches("")){
            return false;
        }
        if(!(usuariosService.findUsuario(usuariosDTO.getCorreo(), usuariosDTO.getPassword()) == null)){
            return false;
        }
        usuariosService.save(usuariosDTO);
        return true;
    }

}
