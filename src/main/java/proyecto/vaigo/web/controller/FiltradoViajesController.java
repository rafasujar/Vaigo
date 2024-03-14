package proyecto.vaigo.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class FiltradoViajesController {

	@GetMapping("/filtradoviajes")
	public ModelAndView filtradoViajes() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("./paginashtml/filtrado_viajes.html");
		return modelAndView;
	}


}
