package proyecto.vaigo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import proyecto.vaigo.model.entity.ViajesEntity;

import java.util.List;


@Repository
@Transactional
public interface ViajesRepository extends JpaRepository<ViajesEntity, Integer> {
    @Query(value = "SELECT * FROM viajes WHERE id_ciudad = :idc1 and id_terreno= :idc2 and id_transporte = :idc3",
            nativeQuery = true)
    public List<ViajesEntity> findFilto(@Param("idc1") int idCiudad, @Param("idc2") int idterreno, @Param("idc3") int idTransporte);

    @Query(value = "SELECT * FROM viajes WHERE id_ciudad = :idd1",
            nativeQuery = true)
    public List<ViajesEntity> findIDCiu(@Param("idd1") String  idCiudad);

    @Query(value = "SELECT v.* FROM viajes v JOIN ciudades c ON v.id_Ciudad = c.id WHERE " +
            "    (v.planes = :paramPlanes OR :paramPlanes = '0') AND" +
            "    (v.id_Ciudad = :paramCiudad OR :paramCiudad = 0) AND" +
            "    (c.id_Pais = :paramPais OR :paramPais = 0) AND" +
            "    (v.id_Terreno = :paramTerreno OR :paramTerreno = 0 OR v.id_Terreno IS NULL) AND" +
            "    (v.id_Transporte = :paramTransporte OR :paramTransporte = 0 OR v.id_Transporte IS NULL);", nativeQuery = true )
    public List<ViajesEntity> filtrado(@Param("paramPlanes") String planes, @Param("paramCiudad") int ciudad, @Param("paramPais") int pais, @Param("paramTerreno") int terreno, @Param("paramTransporte") int transporte);

}
