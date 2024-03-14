package proyecto.vaigo.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Collection;
import java.util.Objects;
@Data
@Entity
@Table(name = "transporte", schema = "vaigo", catalog = "")
public class TransporteEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "TIPO", nullable = true, length = 30)
    private String tipo;
    @Basic
    @Column(name = "PRECIO", nullable = true, precision = 0)
    private Double precio;
   }
