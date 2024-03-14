package proyecto.vaigo.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import proyecto.vaigo.Service.*;
import proyecto.vaigo.model.dto.CiudadesDTO;
import proyecto.vaigo.model.dto.PaisDTO;

import java.util.List;

@RestController
public class SobreNosotrosController {


	@GetMapping("/sobre-nosotros")
	public ModelAndView mostrarExplorar(){
		ModelAndView mav = new ModelAndView("./paginashtml/PlantillaSobreNosotros.html");
		return mav;
	}

}
