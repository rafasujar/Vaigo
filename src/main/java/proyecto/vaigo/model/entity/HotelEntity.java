package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Collection;
import java.util.Objects;
@Data
@Entity
@Table(name = "hotel", schema = "vaigo", catalog = "")
public class HotelEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "NOMBRE", nullable = true, length = 30)
    private String nombre;
    @Basic
    @Column(name = "ID_CIUDAD", nullable = false)
    private int idCiudad;
    @Basic
    @Column(name = "ID_TIPOHOTEL", nullable = false)
    private int idTipohotel;
    @Basic
    @Column(name = "PRECIO", nullable = true, precision = 0)
    private Double precio;

}
