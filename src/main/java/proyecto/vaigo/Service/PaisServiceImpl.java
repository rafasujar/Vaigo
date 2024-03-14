package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.PaisDTO;
import proyecto.vaigo.model.entity.PaisEntity;
import proyecto.vaigo.repository.PaisRepository;


import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class PaisServiceImpl implements PaisService{
    private static final Logger log = LoggerFactory.getLogger(ItinerarioServiceImpl.class);

    @Autowired
    private PaisRepository paisRepository;

    @Override
    public List<PaisDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<PaisDTO> listaPaisDTO = paisRepository.findAll()
                .stream()
                .map(p -> PaisDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaPaisDTO;
    }
    @Override
    public PaisDTO findById(PaisDTO paisDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                paisDTO.getId());

        Optional<PaisEntity> paisEntity = paisRepository.findById(paisDTO.getId());
        if(paisEntity.isPresent()) {
            paisDTO = PaisDTO.ConvertToDTO(paisEntity.get());
            return paisDTO;
        }else {
            return null;
        }
    }

    @Override
    public PaisDTO findById(int idPais) {
        Optional<PaisEntity> paisEntity = paisRepository.findById(idPais);
        if(paisEntity.isPresent()) {
           PaisDTO paisDTO = PaisDTO.ConvertToDTO(paisEntity.get());
            return paisDTO;
        }else {
            return null;
        }
    }
}
