package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.ExcursionDTO;
import proyecto.vaigo.model.entity.ExcursionEntity;
import proyecto.vaigo.repository.ExcursionRepository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ExcursionServiceImpl implements ExcursionService {
    private static final Logger log = LoggerFactory.getLogger(ExcursionServiceImpl.class);

    @Autowired
    private ExcursionRepository excursionRepository;

    @Override
    public List<ExcursionDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<ExcursionDTO> listaExcursionDTO = excursionRepository.findAll()
                .stream()
                .map(p -> ExcursionDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaExcursionDTO;
    }
    @Override
    public ExcursionDTO findById(ExcursionDTO excursionDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                excursionDTO.getId());

        Optional<ExcursionEntity> excursionEntity = excursionRepository.findById(excursionDTO.getId());
        if(excursionEntity.isPresent()) {
            excursionDTO = ExcursionDTO.ConvertToDTO(excursionEntity.get());
            return excursionDTO;
        }else {
            return null;
        }
    }
}
