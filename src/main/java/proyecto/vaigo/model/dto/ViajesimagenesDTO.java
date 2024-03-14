package proyecto.vaigo.model.dto;


import lombok.Data;

import proyecto.vaigo.model.entity.ViajesimagenesEntity;

import java.io.Serializable;

@Data
public class ViajesimagenesDTO implements Serializable {

    private int id;
    private int idViajes;
    private String url;

    public static ViajesimagenesEntity ConvertToEntity(ViajesimagenesDTO dto){
        ViajesimagenesEntity entity = new ViajesimagenesEntity();
        entity.setId(dto.getId());
        entity.setIdViajes(dto.getIdViajes());
        entity.setUrl(dto.getUrl());
        return entity;
    }
    public static ViajesimagenesDTO ConvertToDTO(ViajesimagenesEntity entity){
        ViajesimagenesDTO dto = new ViajesimagenesDTO();
        dto.setId(entity.getId());
        dto.setIdViajes(entity.getIdViajes());
        dto.setUrl(entity.getUrl());
        return dto;
    }
}
