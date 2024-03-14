package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;
@Data
@Entity
@Table(name = "viajes", schema = "vaigo", catalog = "")
public class ViajesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "ID_CIUDAD", nullable = false)
    private int idCiudad;
    @Basic
    @Column(name = "IDA", nullable = false)
    private Date ida;
    @Basic
    @Column(name = "VUELTA", nullable = false)
    private Date vuelta;
    @Basic
    @Column(name = "ID_TERRENO", nullable = false)
    private int idTerreno;
    @Basic
    @Column(name = "ID_TRANSPORTE", nullable = false)
    private int idTransporte;
    @Basic
    @Column(name = "PUNTUACION", nullable = true, precision = 0)
    private Double puntuacion;
    @Basic
    @Column(name = "descripcion", nullable = false, length = 255)
    private String descripcion;
    @Basic
    @Column(name = "planes", nullable = false, length = 1)
    private String planes;

}
