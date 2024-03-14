package proyecto.vaigo.model.dto;

import lombok.Data;
import proyecto.vaigo.model.entity.TerrenoEntity;

import java.io.Serializable;
@Data
public class TerrenoDTO implements Serializable {

	private int id;

	private String tipo;


	public static TerrenoEntity ConvertToEntity(TerrenoDTO dto) {
		TerrenoEntity entity = new TerrenoEntity();
		entity.setId(dto.getId());
		entity.setTipo(dto.getTipo());
		return entity;
	}
	public static TerrenoDTO ConvertToDTO(TerrenoEntity entity) {
		TerrenoDTO dto = new TerrenoDTO();
		dto.setId(entity.getId());
		dto.setTipo(entity.getTipo());
		return dto;
	}

}
