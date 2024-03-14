package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import proyecto.vaigo.model.dto.ViajesimagenesDTO;
import proyecto.vaigo.model.entity.ViajesEntity;
import proyecto.vaigo.model.entity.ViajesimagenesEntity;
import proyecto.vaigo.repository.ViajesImagenesRepository;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ViajesImgServiceImpl implements ViajesImgService{

    private static final Logger log = LoggerFactory.getLogger(ViajesImgServiceImpl.class);

    @Autowired
    private ViajesImagenesRepository viajesImagenesRepository;

    @Override
    public List<ViajesimagenesDTO> findAll() {
        log.info("ClienteServiceImpl - findAll: Lista de todos los cliente");
        List<ViajesimagenesDTO> listaViajesDTO = new ArrayList<>();
        for (ViajesimagenesEntity element :  viajesImagenesRepository.findAll() ) {
            listaViajesDTO.add(ViajesimagenesDTO.ConvertToDTO(element));
        }

        return listaViajesDTO;
    }

    @Override
    public ViajesimagenesDTO findById(ViajesimagenesDTO viajesimagenesDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                viajesimagenesDTO.getId());
        Optional<ViajesimagenesEntity> viajesEntity = viajesImagenesRepository.findById(viajesimagenesDTO.getId());
        if(viajesEntity.isPresent()) {
            viajesimagenesDTO = ViajesimagenesDTO.ConvertToDTO(viajesEntity.get());
            return viajesimagenesDTO;
        }else {
            return null;
        }
    }
    @Override
    public ViajesimagenesDTO findByIdVia(ViajesimagenesDTO viajesimagenesDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                viajesimagenesDTO.getId());
        Optional<ViajesimagenesEntity> viajesEntity = viajesImagenesRepository.findImagenViaje(viajesimagenesDTO.getId());
        if(viajesEntity.isPresent()) {
            viajesimagenesDTO = ViajesimagenesDTO.ConvertToDTO(viajesEntity.get());
            return viajesimagenesDTO;
        }else {
            return null;
        }
    }

    @Override
    public List<ViajesimagenesDTO> buscarporidviajes(int idViaje) {
        List<ViajesimagenesDTO> viajesimagenesDTOList = viajesImagenesRepository.findAllByIdViajes(idViaje)
                .stream()
                .map(p -> ViajesimagenesDTO.ConvertToDTO(p))
                .collect(Collectors.toList());
        return viajesimagenesDTOList;
    }


}
