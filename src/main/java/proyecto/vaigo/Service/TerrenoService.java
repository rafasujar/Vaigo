package proyecto.vaigo.Service;

import proyecto.vaigo.model.dto.TerrenoDTO;

import java.util.List;

public interface TerrenoService {

	List<TerrenoDTO> findAll();
	TerrenoDTO findById(int idTerreno);

}
