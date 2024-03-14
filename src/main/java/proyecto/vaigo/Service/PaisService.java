package proyecto.vaigo.Service;


import proyecto.vaigo.model.dto.PaisDTO;

import java.util.List;

public interface PaisService {
    List<PaisDTO> findAll();
    PaisDTO findById(PaisDTO paisDTO);
    PaisDTO findById(int idPais);
}
