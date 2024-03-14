package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.TransporteDTO;
import proyecto.vaigo.model.entity.TransporteEntity;
import proyecto.vaigo.repository.TransporteRepository;


import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class TransporteServiceImpl implements TransporteService{
    private static final Logger log = LoggerFactory.getLogger(ItinerarioServiceImpl.class);

    @Autowired
    private TransporteRepository transporteRepository;

    @Override
    public List<TransporteDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<TransporteDTO> listaTransporteDTO = transporteRepository.findAll()
                .stream()
                .map(p -> TransporteDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaTransporteDTO;
    }
    @Override
    public TransporteDTO findById(TransporteDTO transporteDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                transporteDTO.getId());

        Optional<TransporteEntity> transporteEntity = transporteRepository.findById(transporteDTO.getId());
        if(transporteEntity.isPresent()) {
            transporteDTO = TransporteDTO.ConvertToDTO(transporteEntity.get());
            return transporteDTO;
        }else {
            return null;
        }
    }

    @Override
    public TransporteDTO findById(int idTransporte) {
        Optional<TransporteEntity> transporteEntity = transporteRepository.findById(idTransporte);
        if(transporteEntity.isPresent()) {
           TransporteDTO transporteDTO = TransporteDTO.ConvertToDTO(transporteEntity.get());
            return transporteDTO;
        }else {
            return null;
        }
    }
}
