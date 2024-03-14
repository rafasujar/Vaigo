package proyecto.vaigo.Service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.HistorialviajesDTO;


import proyecto.vaigo.model.dto.ItinerarioExcursionesDTO;
import proyecto.vaigo.repository.ItinerarioExcursionRepository;


import java.util.List;
import java.util.stream.Collectors;
@Service
public class ItinerarioExcursionServiceImpl implements ItinerarioExcursionService {
    private static final Logger log = LoggerFactory.getLogger(ItinerarioServiceImpl.class);

    @Autowired
    private ItinerarioExcursionRepository itinerarioExcursionRepository;

    @Override
    public List<ItinerarioExcursionesDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<ItinerarioExcursionesDTO> listaitiExDTO = itinerarioExcursionRepository.findAll()
                .stream()
                .map(p -> ItinerarioExcursionesDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaitiExDTO;
    }
    @Override
    public List<ItinerarioExcursionesDTO> todosItiEx(String dato) {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<ItinerarioExcursionesDTO> listaitiExDTO = itinerarioExcursionRepository.todosItiEx(dato)
                .stream()
                .map(p -> ItinerarioExcursionesDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaitiExDTO;
    }
    @Override
    public List<ItinerarioExcursionesDTO> todosItiid(String dato) {
        log.info(dato);
        List<ItinerarioExcursionesDTO> listaitiExDTO = itinerarioExcursionRepository.TodosItiId(dato)
                .stream()
                .map(p -> ItinerarioExcursionesDTO.ConvertToDTO(p))
                .collect(Collectors.toList());
        log.info(String.valueOf(listaitiExDTO));
        return listaitiExDTO;
    }

}
