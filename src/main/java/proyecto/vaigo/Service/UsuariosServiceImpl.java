package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.UsuariosDTO;
import proyecto.vaigo.model.entity.UsuariosEntity;
import proyecto.vaigo.repository.UsuariosRepository;


import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class UsuariosServiceImpl implements UsuariosService {
    private static final Logger log = LoggerFactory.getLogger(ItinerarioServiceImpl.class);

    @Autowired
    private UsuariosRepository usuariosRepository;

    @Override
    public List<UsuariosDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<UsuariosDTO> listaUsuariosDTO = usuariosRepository.findAll()
                .stream()
                .map(p -> UsuariosDTO.ConvertToDTO(p))
                .collect(Collectors.toList());

        return listaUsuariosDTO;
    }
    @Override
    public UsuariosDTO findById(UsuariosDTO usuariosDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                usuariosDTO.getId());

        Optional<UsuariosEntity> usuariosEntity = usuariosRepository.findById(usuariosDTO.getId());
        if(usuariosEntity.isPresent()) {
            usuariosDTO = UsuariosDTO.ConvertToDTO(usuariosEntity.get());
            return usuariosDTO;
        }else {
            return null;
        }
    }
    @Override
    public void save(UsuariosDTO usuariosDTO) {
        log.info("ClienteServiceImpl - save: Salvamos el cliente: " +
                usuariosDTO.toString());

        UsuariosEntity usuariosEntity = UsuariosDTO.ConvertToEntity(usuariosDTO);
        usuariosRepository.save(usuariosEntity);
    }
    @Override
    public UsuariosDTO findUsuario( String correo ,  String password) {

        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
       UsuariosEntity usuariosEntity = usuariosRepository.findUsuario(correo, password);
        if (usuariosEntity == null )
            return null;
        UsuariosDTO usuariosDTO = UsuariosDTO.ConvertToDTO(usuariosEntity);
        log.info(String.valueOf(usuariosDTO));
        return usuariosDTO;
    }
}
