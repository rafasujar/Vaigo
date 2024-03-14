package proyecto.vaigo.Service;

import proyecto.vaigo.model.dto.ItinerarioExcursionesDTO;

import java.util.List;

public interface ItinerarioExcursionService {
    List<ItinerarioExcursionesDTO> findAll();
    List<ItinerarioExcursionesDTO> todosItiEx(String dato);
    List<ItinerarioExcursionesDTO> todosItiid(String dato);
}
