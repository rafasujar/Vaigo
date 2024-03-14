package proyecto.vaigo.model.dto;

import jakarta.persistence.*;
import lombok.Data;
import proyecto.vaigo.model.entity.UsuariosEntity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Objects;


@Data
public class UsuariosDTO implements Serializable {
    private int id;
    private String username;
    private String correo;
    private String imgperfil;
    private String password;
    private String rol;
    private Timestamp fregistro;

    public static UsuariosEntity ConvertToEntity(UsuariosDTO dto){
        UsuariosEntity entity = new UsuariosEntity();
        entity.setId(dto.getId());
        entity.setUsername(dto.getUsername());
        entity.setCorreo(dto.getCorreo());
        entity.setImgperfil(dto.getImgperfil());
        entity.setPassword(dto.getPassword());
        entity.setRol(dto.getRol());
        entity.setFregistro(dto.getFregistro());
        return entity;
    }
    public static UsuariosDTO ConvertToDTO(UsuariosEntity entity){
        UsuariosDTO dto = new UsuariosDTO();
        dto.setId(entity.getId());
        dto.setUsername(entity.getUsername());
        dto.setCorreo(entity.getCorreo());
        dto.setImgperfil(entity.getImgperfil());
        dto.setPassword(entity.getPassword());
        dto.setRol(entity.getRol());
        dto.setFregistro(entity.getFregistro());
        return dto;
    }

}
