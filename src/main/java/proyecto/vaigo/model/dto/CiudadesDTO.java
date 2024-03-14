package proyecto.vaigo.model.dto;

import lombok.Data;
import proyecto.vaigo.model.entity.CiudadesEntity;

import java.io.Serializable;

@Data
public class CiudadesDTO implements Serializable {
    private int id;
    private int idPais;
    private String ciudad;


    public static CiudadesEntity ConvertToEntity (CiudadesDTO dto) {
        CiudadesEntity entity = new CiudadesEntity();
        entity.setId(dto.getId());
        entity.setIdPais(dto.getIdPais());
        entity.setCiudad(dto.getCiudad());
        return entity;
    }
    public static CiudadesDTO ConvertToDTO (CiudadesEntity entity) {
        CiudadesDTO dto = new CiudadesDTO();
        dto.setId(entity.getId());
        dto.setIdPais(entity.getIdPais());
        dto.setCiudad(entity.getCiudad());
        return dto;
    }
}