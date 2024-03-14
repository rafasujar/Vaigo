package proyecto.vaigo.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import proyecto.vaigo.Service.ViajesService;
import proyecto.vaigo.model.dto.ViajesDTO;

@RestController
public class SeleccionDestino {

    private static final Logger log = LoggerFactory.getLogger(SeleccionDestino.class);
    @Autowired
    private ViajesService viajesService;
    @GetMapping("/seleccionDestino")
    public ModelAndView inicio() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("./paginashtml/selecciondedestino.html");

        return modelAndView;
    }
    @GetMapping("/seleccionDestino/{dato}")
    public ViajesDTO mostrarItiDeUnViaje (@PathVariable("dato") String dato){
        log.info(dato);
        ViajesDTO viajesDTO=new ViajesDTO();
        viajesDTO.setId(Integer.parseInt(dato));
        log.info(String.valueOf(viajesDTO));
        return viajesService.findById(viajesDTO);
    }
}
