package proyecto.vaigo.model.dto;

import jakarta.persistence.*;
import lombok.Data;
import proyecto.vaigo.model.entity.ItinerarioEntity;

import java.io.Serializable;
import java.util.Objects;

@Data
public class ItinerarioDTO implements Serializable {
    private int id;

    private String nombre;
    private String cometario;

    private Double puntuacion;

    public static ItinerarioDTO ConvertToDTO(ItinerarioEntity itinerarioEntity) {
        ItinerarioDTO itinerarioDTO = new ItinerarioDTO();
        itinerarioDTO.setId(itinerarioEntity.getId());

        itinerarioDTO.setNombre(itinerarioEntity.getNombre());
        itinerarioDTO.setCometario(itinerarioEntity.getCometario());

        itinerarioDTO.setPuntuacion(itinerarioEntity.getPuntuacion());
        return itinerarioDTO;
    }

    public static ItinerarioEntity ConvertToEntity(ItinerarioDTO itinerarioDTO) {
        ItinerarioEntity itinerarioEntity = new ItinerarioEntity();
        itinerarioEntity.setId(itinerarioDTO.getId());

        itinerarioEntity.setNombre(itinerarioDTO.getNombre());
        itinerarioEntity.setCometario(itinerarioDTO.getCometario());

        itinerarioEntity.setPuntuacion(itinerarioDTO.getPuntuacion());
        return itinerarioEntity;
    }
}
