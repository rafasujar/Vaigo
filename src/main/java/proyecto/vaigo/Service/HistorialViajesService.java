package proyecto.vaigo.Service;



import proyecto.vaigo.model.dto.HistorialviajesDTO;

import java.util.List;

public interface HistorialViajesService {
    List<HistorialviajesDTO> findAll();
     HistorialviajesDTO findById(HistorialviajesDTO historialViajesDTO);
}
