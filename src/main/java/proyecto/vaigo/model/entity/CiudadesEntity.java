package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Collection;
import java.util.Objects;

@Data
@Entity
@Table(name = "ciudades", schema = "vaigo", catalog = "")
public class CiudadesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "ID_PAIS", nullable = false)
    private int idPais;
    @Basic
    @Column(name = "CIUDAD", nullable = true, length = 30)
    private String ciudad;

}
