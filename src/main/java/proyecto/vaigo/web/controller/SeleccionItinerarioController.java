package proyecto.vaigo.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import proyecto.vaigo.Service.ItinerarioExcursionService;
import proyecto.vaigo.Service.ViajesService;
import proyecto.vaigo.model.dto.ExcursionDTO;
import proyecto.vaigo.model.dto.ItinerarioExcursionesDTO;
import proyecto.vaigo.model.dto.ViajesDTO;

import java.util.List;

@RestController
public class SeleccionItinerarioController {

    private static final Logger log = LoggerFactory.getLogger(SeleccionItinerarioController.class);
    @Autowired
    private ItinerarioExcursionService itinerarioExcursionService;
    @Autowired
    private ViajesService viajesService;
    @GetMapping("/seleccionItinerario")
    public ModelAndView inicio() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("./paginashtml/seleccionaritinerario.html");

        return modelAndView;
    }
    @GetMapping("/seleccionItinerario/{dato}")
    public ViajesDTO mostrarItiDeUnViaje (@PathVariable("dato") String dato){
        log.info(dato);
        ViajesDTO viajesDTO=new ViajesDTO();
        viajesDTO.setId(Integer.parseInt(dato));
        log.info(String.valueOf(viajesDTO));
        return viajesService.findById(viajesDTO);
    }
    @GetMapping("/ItiEx")
    public List<ItinerarioExcursionesDTO> BuscEx(@RequestParam String dato) {

        log.info("CuentaController - save: Salvando la cuenta del cliente: ");
        // invocamos la operacion save a la capa de servicio de cuenta
        return itinerarioExcursionService.todosItiEx(dato);
    }
}
