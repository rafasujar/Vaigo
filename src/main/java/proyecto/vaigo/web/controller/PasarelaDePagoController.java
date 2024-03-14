package proyecto.vaigo.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import proyecto.vaigo.Service.HotelService;
import proyecto.vaigo.Service.ItinerarioExcursionService;
import proyecto.vaigo.Service.ViajesService;
import proyecto.vaigo.model.dto.HotelDTO;
import proyecto.vaigo.model.dto.ItinerarioExcursionesDTO;
import proyecto.vaigo.model.dto.ViajesDTO;

import java.util.List;

@RestController
public class PasarelaDePagoController {
    private static final Logger log =
            LoggerFactory.getLogger(PasarelaDePagoController.class);

    @Autowired
    private ItinerarioExcursionService itinerarioExcursionService;
    @Autowired
    private ViajesService viajesService;
    @Autowired
    private HotelService hotelService;

    @GetMapping("/pasarelaPago")
    public ModelAndView inicio() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("./paginashtml/pasarelaPago.html");
        return modelAndView;
    }

    @GetMapping("/ItiID")
    public List<ItinerarioExcursionesDTO> BuscID(@RequestParam String dato) {

        log.info("CuentaController - save: Salvando la cuenta del cliente: ");
        // invocamos la operacion save a la capa de servicio de cuenta
        return itinerarioExcursionService.todosItiid(dato);
    }



}
