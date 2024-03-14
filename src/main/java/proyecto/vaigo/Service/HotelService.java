package proyecto.vaigo.Service;

import proyecto.vaigo.model.dto.HotelDTO;

import java.util.List;

public interface HotelService {
    List<HotelDTO> todosItiid(String dato);
    HotelDTO findById(HotelDTO hotelDTO);
}
