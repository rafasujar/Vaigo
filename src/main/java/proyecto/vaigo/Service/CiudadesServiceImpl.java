package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.CiudadesDTO;
import proyecto.vaigo.model.entity.CiudadesEntity;
import proyecto.vaigo.repository.CiudadesRepository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CiudadesServiceImpl implements CiudadesService{
    private static final Logger log = LoggerFactory.getLogger(CiudadesServiceImpl.class);

    @Autowired
    private CiudadesRepository ciudadesRepository;

    @Override
    public List<CiudadesDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<CiudadesDTO> listaCiudadesDTO = ciudadesRepository.findAll()
                .stream()
                .map(p -> CiudadesDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaCiudadesDTO;
    }
    @Override
    public CiudadesDTO findById(CiudadesDTO ciudadesDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                ciudadesDTO.getId());

        Optional<CiudadesEntity> ciudadesEntity = ciudadesRepository.findById(ciudadesDTO.getId());
        if(ciudadesEntity.isPresent()) {
            ciudadesDTO = CiudadesDTO.ConvertToDTO(ciudadesEntity.get());
            return ciudadesDTO;
        }else {
            return null;
        }
    }

    @Override
    public CiudadesDTO findById(int idCiudad) {
        Optional<CiudadesEntity> ciudadesEntity = ciudadesRepository.findById(idCiudad);
        if(ciudadesEntity.isPresent()) {
            CiudadesDTO ciudadesDTO = CiudadesDTO.ConvertToDTO(ciudadesEntity.get());
            return ciudadesDTO;
        }else {
            return null;
        }
    }

}
