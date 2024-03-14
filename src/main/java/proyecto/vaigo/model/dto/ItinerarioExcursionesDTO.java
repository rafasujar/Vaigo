package proyecto.vaigo.model.dto;

import jakarta.persistence.*;
import lombok.Data;
import proyecto.vaigo.model.entity.ItinerarioExcursionesEntity;

import java.io.Serializable;
import java.util.Objects;
@Data
public class ItinerarioExcursionesDTO implements Serializable {
    private Integer id;
    private Integer idItinerario;
    private Integer idExcursion;


    public static ItinerarioExcursionesEntity ConvertToEntity(ItinerarioExcursionesDTO dto){
        ItinerarioExcursionesEntity entity = new ItinerarioExcursionesEntity();
        entity.setId(dto.getId());
        entity.setIdItinerario(dto.getIdItinerario());
        entity.setIdExcursion(dto.getIdExcursion());
        return entity;
    }
    public static ItinerarioExcursionesDTO ConvertToDTO(ItinerarioExcursionesEntity entity){
        ItinerarioExcursionesDTO dto = new ItinerarioExcursionesDTO();
        dto.setId(entity.getId());
        dto.setIdItinerario(entity.getIdItinerario());
        dto.setIdExcursion(entity.getIdExcursion());
        return dto;
    }
}
