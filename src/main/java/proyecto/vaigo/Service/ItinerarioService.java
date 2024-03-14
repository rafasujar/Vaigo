package proyecto.vaigo.Service;


import proyecto.vaigo.model.dto.ItinerarioDTO;

import java.util.List;

public interface ItinerarioService {
    List<ItinerarioDTO> findAll();
    ItinerarioDTO findById(ItinerarioDTO itinerarioDTO);
}
