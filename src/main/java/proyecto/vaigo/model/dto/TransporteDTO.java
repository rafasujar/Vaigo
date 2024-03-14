package proyecto.vaigo.model.dto;

import jakarta.persistence.*;
import lombok.Data;
import proyecto.vaigo.model.entity.TransporteEntity;

import java.io.Serializable;
import java.util.Objects;

@Data
public class TransporteDTO implements Serializable {
    private int id;
    private String tipo;
    private Double precio;

    public static TransporteEntity ConvertToEntity(TransporteDTO dto){
        TransporteEntity entity = new TransporteEntity();
        entity.setId(dto.getId());
        entity.setTipo(dto.getTipo());
        entity.setPrecio(dto.getPrecio());
        return entity;
    }

    public static TransporteDTO ConvertToDTO(TransporteEntity entity){
        TransporteDTO dto = new TransporteDTO();
        dto.setId(entity.getId());
        dto.setTipo(entity.getTipo());
        dto.setPrecio(entity.getPrecio());
        return dto;
    }

}
