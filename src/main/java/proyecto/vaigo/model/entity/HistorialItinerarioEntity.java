package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Objects;
@Data
@Entity
@Table(name = "Historial_Itinerario", schema = "vaigo", catalog = "")
public class HistorialItinerarioEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "Id_historial_viajes", nullable = false)
    private int idHistorialViajes;
    @Basic
    @Column(name = "id_itnerario", nullable = false)
    private int idItnerario;

}
