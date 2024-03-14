package proyecto.vaigo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.TerrenoDTO;
import proyecto.vaigo.repository.TerrenoRepository;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class TerrenoServiceImp implements TerrenoService{

@Autowired
private TerrenoRepository terrenoRepository;


	@Override
	public List<TerrenoDTO> findAll() {
		List<TerrenoDTO> listaTerrenoDTO = terrenoRepository.findAll().stream().map(p -> TerrenoDTO.ConvertToDTO(p)).collect(Collectors.toList());
		return listaTerrenoDTO;
	}

	@Override
	public TerrenoDTO findById(int idTerreno) {
		TerrenoDTO terrenoDTO = TerrenoDTO.ConvertToDTO(terrenoRepository.findById(idTerreno).get());
		return terrenoDTO;
	}


}

