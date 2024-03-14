package proyecto.vaigo.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import proyecto.vaigo.Service.*;
import proyecto.vaigo.model.dto.*;

import java.util.List;

@RestController
public class ListController {


	private static final Logger log =
			LoggerFactory.getLogger(ListController.class);
	@Autowired
	private ViajesService viajesService;
	@Autowired
	private CiudadesService ciudadesService;
	@Autowired
	private PaisService paisService;

	@Autowired
	private TerrenoService terrenoService;

	@Autowired
	private TransporteService transporteService;

	@Autowired
	private TipoHotelService tipoHotelService;
	@Autowired
	private HotelService hotelService;
	@Autowired
	private ExcursionService excursionService;



	@GetMapping("/api/ciudades")
	public List<CiudadesDTO> getCiudades(){
		return ciudadesService.findAll();
	}
	@GetMapping("/api/paises")
	public List<PaisDTO> getPaises(){
		return paisService.findAll();
	}
	@GetMapping("/api/terrenos")
	public List<TerrenoDTO> getTerrenos(){
		return terrenoService.findAll();
	}
	@GetMapping("/api/transportes")
	public List<TransporteDTO> getTransportes(){
		return transporteService.findAll();
	}
	@GetMapping("/api/estancias")
	public List<TipohotelDTO> getTiposHotel(){
		return tipoHotelService.findAll();
	}

	@GetMapping("/api/Hotelid")
	public HotelDTO hotelid (@RequestParam String dato){
		log.info(dato);
		HotelDTO hotelDTO=new HotelDTO();
		hotelDTO.setId(Integer.parseInt(dato));

		log.info("CuentaController - save: Salvando la cuenta del cliente: " +
				hotelDTO);
		// invocamos la operacion save a la capa de servicio de cuenta
		return hotelService.findById(hotelDTO);
	}
	@GetMapping("/api/ViajeId")
	public ViajesDTO mostrarItiDeUnViaje (@RequestParam String dato){
		log.info(dato);
		ViajesDTO viajesDTO=new ViajesDTO();
		viajesDTO.setId(Integer.parseInt(dato));
		log.info(String.valueOf(viajesDTO));
		return viajesService.findById(viajesDTO);
	}
	@GetMapping("/api/ExcursionId")
	public ExcursionDTO byidEx (@RequestParam String dato){
		log.info(dato);
		ExcursionDTO excursionDTO=new ExcursionDTO();
		excursionDTO.setId(Integer.parseInt(dato));
		log.info(String.valueOf(excursionDTO));
		return excursionService.findById(excursionDTO);
	}
	@GetMapping("/api/TransporteId")
	public TransporteDTO ByidTrans (@RequestParam String dato){
		log.info(dato);
		TransporteDTO transporteDTO=new TransporteDTO();
		transporteDTO.setId(Integer.parseInt(dato));
		log.info(String.valueOf(transporteDTO));
		return transporteService.findById(transporteDTO);
	}
	@GetMapping("/ViaCiu")
	public List<ViajesDTO> BuscViCIU(@RequestParam String dato) {

		log.info("CuentaController - save: Salvando la cuenta del cliente: ");
		// invocamos la operacion save a la capa de servicio de cuenta
		return viajesService.todosItiid(dato);
	}
	@GetMapping("/api/ciudad")
	public CiudadesDTO ByidCiu (@RequestParam String dato){
		log.info(dato);
		CiudadesDTO ciudadesDTO=new CiudadesDTO();
		ciudadesDTO.setId(Integer.parseInt(dato));
		log.info(String.valueOf(ciudadesDTO));
		return ciudadesService.findById(ciudadesDTO);
	}
	@GetMapping("/HotelCiu")
	public List<HotelDTO> BuscHoCIU(@RequestParam String dato) {
		log.info("CuentaController - save: Salvando la cuenta del cliente: ");
		// invocamos la operacion save a la capa de servicio de cuenta
		return hotelService.todosItiid(dato);
	}
	@PostMapping("/buscarExcursion")
	public ExcursionDTO BuscUsu(@RequestBody ExcursionDTO excursionDTO) {

		log.info("CuentaController - save: Salvando la cuenta del cliente: " +
				excursionDTO.getId());

		return excursionService.findById(excursionDTO);
	}

}
