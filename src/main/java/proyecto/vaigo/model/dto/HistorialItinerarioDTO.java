package proyecto.vaigo.model.dto;

import jakarta.persistence.*;
import lombok.Data;
import proyecto.vaigo.model.entity.HistorialItinerarioEntity;

import java.io.Serializable;
import java.util.Objects;

@Data
public class HistorialItinerarioDTO implements Serializable {
    private Integer id;
    private Integer idHistorialViajes;
    private Integer idItnerario;


public static HistorialItinerarioEntity ConvertToEntity(HistorialItinerarioDTO dto){
        HistorialItinerarioEntity entity = new HistorialItinerarioEntity();
        entity.setId(dto.getId());
        entity.setIdHistorialViajes(dto.getIdHistorialViajes());
        entity.setIdItnerario(dto.getIdItnerario());
        return entity;
    }
    public static HistorialItinerarioDTO ConvertToDTO(HistorialItinerarioEntity entity){
        HistorialItinerarioDTO dto = new HistorialItinerarioDTO();
        dto.setId(entity.getId());
        dto.setIdHistorialViajes(entity.getIdHistorialViajes());
        dto.setIdItnerario(entity.getIdItnerario());
        return dto;
    }







}
