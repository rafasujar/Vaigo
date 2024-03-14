package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Collection;
import java.util.Objects;
@Data
@Entity
@Table(name = "historialviajes", schema = "vaigo", catalog = "")
public class HistorialviajesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "ID_USUARIO", nullable = false)
    private int idUsuario;
    @Basic
    @Column(name = "ID_VIAJE", nullable = false)
    private int idViaje;
    @Basic
    @Column(name = "id_hotel", nullable = false)
    private int idHotel;
    @Basic
    @Column(name = "NUMPERSONAS", nullable = true)
    private Integer numpersonas;
    @Basic
    @Column(name = "Precio_total", nullable = true, precision = 0)
    private Double precioTotal;
}
