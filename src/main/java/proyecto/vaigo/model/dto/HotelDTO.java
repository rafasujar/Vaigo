package proyecto.vaigo.model.dto;

import jakarta.persistence.*;
import lombok.Data;
import proyecto.vaigo.model.entity.HotelEntity;

import java.io.Serializable;
import java.util.Objects;

@Data
public class HotelDTO implements Serializable {
    private int id;
    private String nombre;
    private int idCiudad;
    private int idTipohotel;
    private Double precio;

    public static HotelEntity ConvertToEntity(HotelDTO hotelDTO){
        HotelEntity hotelEntity = new HotelEntity();
        hotelEntity.setId(hotelDTO.getId());
        hotelEntity.setNombre(hotelDTO.getNombre());
        hotelEntity.setIdCiudad(hotelDTO.getIdCiudad());
        hotelEntity.setIdTipohotel(hotelDTO.getIdTipohotel());
        hotelEntity.setPrecio(hotelDTO.getPrecio());
        return hotelEntity;
    }
    public static HotelDTO ConvertToDTO(HotelEntity hotelEntity){
        HotelDTO hotelDTO = new HotelDTO();
        hotelDTO.setId(hotelEntity.getId());
        hotelDTO.setNombre(hotelEntity.getNombre());
        hotelDTO.setIdCiudad(hotelEntity.getIdCiudad());
        hotelDTO.setIdTipohotel(hotelEntity.getIdTipohotel());
        hotelDTO.setPrecio(hotelEntity.getPrecio());
        return hotelDTO;
    }

}