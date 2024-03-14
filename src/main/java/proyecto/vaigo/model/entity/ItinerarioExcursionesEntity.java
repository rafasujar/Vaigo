package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Objects;
@Data
@Entity
@Table(name = "Itinerario_excursiones", schema = "vaigo", catalog = "")
public class ItinerarioExcursionesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "Id_itinerario", nullable = false)
    private int idItinerario;
    @Basic
    @Column(name = "id_excursion", nullable = false)
    private int idExcursion;

}
