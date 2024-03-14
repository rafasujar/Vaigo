package proyecto.vaigo.web.controller;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import proyecto.vaigo.Service.*;
import proyecto.vaigo.model.dto.*;

import java.util.List;


@RestController
public class ExplorarController {

	private static final Logger log =
			LoggerFactory.getLogger(ExplorarController.class);

	@Autowired
	private  ViajesImgService viajesImgService;
	@Autowired
	private  ViajesService viajesService;

	@Autowired
	private CiudadesService ciudadesService;
	@Autowired
	private PaisService paisService;

	@Autowired
	private TerrenoService terrenoService;

	@Autowired
	private TransporteService transporteService;




	@GetMapping("/explorar")
	public ModelAndView mostrarExplorar(){
		ModelAndView mav = new ModelAndView("./paginashtml/paginaExposicionDeContenidos.html");
		return mav;
	}



	@GetMapping("/explorar/todo")
	public String todoslosviajes(){
		//necesario
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.enable(SerializationFeature.INDENT_OUTPUT);


		ArrayNode arrayNode = objectMapper.createArrayNode();

		//iterar sobre la lista de viajes y agregarlos al array
		for(ViajesDTO viajesDTO : viajesService.findAll()){
			ObjectNode objetoNode = objectMapper.createObjectNode();
			if (viajesDTO.getId() != 0 ) {
				objetoNode.put("id", viajesDTO.getId());
				CiudadesDTO ciudadesDTO = ciudadesService.findById(viajesDTO.getIdCiudad());
				objetoNode.put("ciudad", ciudadesDTO.getCiudad());
				objetoNode.put("pais", paisService.findById(ciudadesDTO.getIdPais()).getPais());
				objetoNode.put("terreno",terrenoService.findById(viajesDTO.getIdTerreno()).getTipo());
				objetoNode.put("transporte", transporteService.findById(viajesDTO.getIdTransporte()).getTipo());
				objetoNode.put("puntuacion", viajesDTO.getPuntuacion());
				objetoNode.put("descripcion", viajesDTO.getDescripcion());
				objetoNode.put("planes", viajesDTO.getPlanes());
				for (ViajesimagenesDTO viajesImgDTO : viajesImgService.buscarporidviajes(viajesDTO.getId())) {
					objetoNode.put("path", viajesImgDTO.getUrl());
				}

				arrayNode.add(objetoNode);
			}
		}


		String json = "";
		try {
		json = objectMapper.writeValueAsString(arrayNode);

		}catch (Exception e){
			e.printStackTrace();
		}
		return json ;

	}

	@PostMapping("/explorar/filtro")
	public String fitradoviajes(@RequestBody  String filtro) {
		List<ViajesDTO> viajededtolist = viajesService.filtrado(filtro);
		if (viajededtolist.isEmpty()) {
		return "false";
		}
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.enable(SerializationFeature.INDENT_OUTPUT);
		ArrayNode arrayNode = objectMapper.createArrayNode();
		for(ViajesDTO viajesDTO : viajededtolist){
			ObjectNode objetoNode = objectMapper.createObjectNode();
			if (viajesDTO.getId() != 0 ) {
				objetoNode.put("id", viajesDTO.getId());
				CiudadesDTO ciudadesDTO = ciudadesService.findById(viajesDTO.getIdCiudad());
				objetoNode.put("ciudad", ciudadesDTO.getCiudad());
				objetoNode.put("pais", paisService.findById(ciudadesDTO.getIdPais()).getPais());
				objetoNode.put("terreno",terrenoService.findById(viajesDTO.getIdTerreno()).getTipo());
				objetoNode.put("transporte", transporteService.findById(viajesDTO.getIdTransporte()).getTipo());
				objetoNode.put("puntuacion", viajesDTO.getPuntuacion());
				objetoNode.put("descripcion", viajesDTO.getDescripcion());
				objetoNode.put("planes", viajesDTO.getPlanes());
				for (ViajesimagenesDTO viajesImgDTO : viajesImgService.buscarporidviajes(viajesDTO.getId())) {
					objetoNode.put("path", viajesImgDTO.getUrl());
				}


				arrayNode.add(objetoNode);
			}
		}



		String json = "";
		try {
			json = objectMapper.writeValueAsString(arrayNode);

		}catch (Exception e){
			e.printStackTrace();
		}
		log.info("filtro: "+filtro);
		return json ;
	}


}
