package proyecto.vaigo.Service;


import proyecto.vaigo.model.dto.ExcursionDTO;

import java.util.List;

public interface ExcursionService {
    List<ExcursionDTO> findAll();
    ExcursionDTO findById(ExcursionDTO excursionDTO);
}
