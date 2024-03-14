package proyecto.vaigo.Service;

import proyecto.vaigo.model.dto.CiudadesDTO;

import java.util.List;

public interface CiudadesService {
    List<CiudadesDTO> findAll();
    CiudadesDTO findById(CiudadesDTO ciudadesDTO);
    CiudadesDTO findById(int idCiudad);
}
