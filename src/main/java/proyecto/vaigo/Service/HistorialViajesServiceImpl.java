package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.HistorialviajesDTO;
import proyecto.vaigo.model.entity.HistorialviajesEntity;
import proyecto.vaigo.repository.HistorialViajesRepository;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class HistorialViajesServiceImpl implements HistorialViajesService{
    private static final Logger log = LoggerFactory.getLogger(HistorialViajesServiceImpl.class);

    @Autowired
    private HistorialViajesRepository historialViajesRepository;

    @Override
    public List<HistorialviajesDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<HistorialviajesDTO> listaHistorialDTO = historialViajesRepository.findAll()
                .stream()
                .map(p -> HistorialviajesDTO.convertToDTO(p))
                .collect(Collectors.toList());

        return listaHistorialDTO;
    }
    @Override
    public HistorialviajesDTO findById(HistorialviajesDTO historialViajesDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                historialViajesDTO.getId());

        Optional<HistorialviajesEntity> historialviajesEntity = historialViajesRepository.findById(historialViajesDTO.getId());
        if(historialviajesEntity.isPresent()) {
            historialViajesDTO = HistorialviajesDTO.convertToDTO(historialviajesEntity.get());
            return historialViajesDTO;
        }else {
            return null;
        }
    }
}
