package proyecto.vaigo.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.vaigo.model.dto.HistorialviajesDTO;
import proyecto.vaigo.model.dto.HotelDTO;
import proyecto.vaigo.model.dto.ItinerarioExcursionesDTO;
import proyecto.vaigo.model.entity.HistorialviajesEntity;
import proyecto.vaigo.model.entity.HotelEntity;
import proyecto.vaigo.repository.HotelRepository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;


@Service
public class HotelServiceImpl implements HotelService{
    private static final Logger log = LoggerFactory.getLogger(HotelService.class);

    @Autowired
    private HotelRepository hotelRepository;
    @Override
    public List<HotelDTO> todosItiid(String dato) {
        log.info(dato);
        List<HotelDTO> listaitiExDTO = hotelRepository.findIDCiu(dato)
                .stream()
                .map(p -> HotelDTO.ConvertToDTO(p))
                .collect(Collectors.toList());
        log.info(String.valueOf(listaitiExDTO));
        return listaitiExDTO;
    }

    @Override
    public HotelDTO findById(HotelDTO hotelDTO) {
        log.info("ClienteServiceImpl - findById: Buscar cliente por id: " +
                hotelDTO.getId());

        Optional<HotelEntity> hotelEntity = hotelRepository.findById(hotelDTO.getId());
        if(hotelEntity.isPresent()) {
            hotelDTO = HotelDTO.ConvertToDTO(hotelEntity.get());
            return hotelDTO;
        }else {
            return null;
        }
    }

}
