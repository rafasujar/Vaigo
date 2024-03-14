package proyecto.vaigo.model.dto;

import lombok.Data;
import proyecto.vaigo.model.entity.TipohotelEntity;

import java.io.Serializable;


@Data
public class TipohotelDTO implements Serializable{
    private int id;
    private String tipo;


    public static TipohotelDTO convertToDTO(TipohotelEntity tipoHotel){
        TipohotelDTO tipoHotelDTO = new TipohotelDTO();
        tipoHotelDTO.setId(tipoHotel.getId());
        tipoHotelDTO.setTipo(tipoHotel.getTipo());

        return tipoHotelDTO;
    }

    public static TipohotelEntity convertToEntity(TipohotelDTO tipoHotelDTO){
        TipohotelEntity tipoHotel = new TipohotelEntity();
        tipoHotel.setId(tipoHotelDTO.getId());
        tipoHotel.setTipo(tipoHotelDTO.getTipo());

        return  tipoHotel;
    }
}
