package proyecto.vaigo.model.dto;

import jakarta.persistence.*;
import lombok.Data;
import proyecto.vaigo.model.entity.ViajesEntity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Objects;

@Data

public class ViajesDTO implements Serializable {
    private int id;
    private int idCiudad;
    private Date ida;
    private Date vuelta;
    private int idTerreno;
    private int idTransporte;
    private Double puntuacion;
    private String descripcion;
    private String planes;

    public static ViajesEntity ConvertToEntity(ViajesDTO dto){
        ViajesEntity entity = new ViajesEntity();
        entity.setId(dto.getId());
        entity.setIdCiudad(dto.getIdCiudad());
        entity.setIda(dto.getIda());
        entity.setVuelta(dto.getVuelta());
        entity.setIdTerreno(dto.getIdTerreno());
        entity.setIdTransporte(dto.getIdTransporte());
        entity.setPuntuacion(dto.getPuntuacion());
        entity.setDescripcion(dto.getDescripcion());
        entity.setPlanes(dto.getPlanes());
        return entity;
    }
    public static ViajesDTO ConvertToDTO(ViajesEntity entity){
        ViajesDTO dto = new ViajesDTO();
        dto.setId(entity.getId());
        dto.setIdCiudad(entity.getIdCiudad());
        dto.setIda(entity.getIda());
        dto.setVuelta(entity.getVuelta());
        dto.setIdTerreno(entity.getIdTerreno());
        dto.setIdTransporte(entity.getIdTransporte());
        dto.setPuntuacion(entity.getPuntuacion());
        dto.setDescripcion(entity.getDescripcion());
        dto.setPlanes(entity.getPlanes());
        return dto;
    }
}
