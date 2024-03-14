package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "viajesimagenes", schema = "vaigo", catalog = "")
public class ViajesimagenesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "id_viajes", nullable = false)
    private int idViajes;
    @Basic
    @Column(name = "URL", nullable = true, length = 300)
    private String url;

}
