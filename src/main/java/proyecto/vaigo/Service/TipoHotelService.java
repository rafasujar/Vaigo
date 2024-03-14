package proyecto.vaigo.Service;


import proyecto.vaigo.model.dto.TipohotelDTO;


import java.util.List;

public interface TipoHotelService {
    List<TipohotelDTO> findAll();
    TipohotelDTO findById(TipohotelDTO tipoHotelDTO);
}
