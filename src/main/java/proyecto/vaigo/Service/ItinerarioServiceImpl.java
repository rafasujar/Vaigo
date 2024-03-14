package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import proyecto.vaigo.model.dto.ItinerarioDTO;
import proyecto.vaigo.model.entity.ItinerarioEntity;
import proyecto.vaigo.repository.ItinerarioRepository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ItinerarioServiceImpl implements ItinerarioService {
    private static final Logger log = LoggerFactory.getLogger(ItinerarioServiceImpl.class);

    @Autowired
    private ItinerarioRepository itinerarioRepository;

    @Override
    public List<ItinerarioDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<ItinerarioDTO> listaItinerarioDTO = itinerarioRepository.findAll()
                .stream()
                .map(p -> ItinerarioDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaItinerarioDTO;
    }
    @Override
    public ItinerarioDTO findById(ItinerarioDTO itinerarioDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                itinerarioDTO.getId());

        Optional<ItinerarioEntity> itinerarioEntity = itinerarioRepository.findById(itinerarioDTO.getId());
        if(itinerarioEntity.isPresent()) {
            itinerarioDTO = ItinerarioDTO.ConvertToDTO(itinerarioEntity.get());
            return itinerarioDTO;
        }else {
            return null;
        }
    }
}
