package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Collection;
import java.util.Objects;
@Data
@Entity
@Table(name = "itinerario", schema = "vaigo", catalog = "")
public class ItinerarioEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "Nombre", nullable = false, length = 255)
    private String nombre;
    @Basic
    @Column(name = "Cometario", nullable = true, length = 255)
    private String cometario;
    @Basic
    @Column(name = "puntuacion", nullable = true, precision = 0)
    private Double puntuacion;

}
