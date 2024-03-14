package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Timestamp;
import java.util.Collection;
import java.util.Objects;
@Data
@Entity
@Table(name = "excursion", schema = "vaigo", catalog = "")
public class ExcursionEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "ID_CIUDAD", nullable = false)
    private int idCiudad;
    @Basic
    @Column(name = "TIPO", nullable = true, length = 30)
    private String tipo;
    @Basic
    @Column(name = "PRECIO", nullable = true, precision = 0)
    private Double precio;
    @Basic
    @Column(name = "NOMBRE", nullable = true, length = 30)
    private String nombre;
    @Basic
    @Column(name = "FEC_INICIO", nullable = true)
    private Timestamp fecInicio;
    @Basic
    @Column(name = "DURACION", nullable = true)
    private Timestamp duracion;

}
