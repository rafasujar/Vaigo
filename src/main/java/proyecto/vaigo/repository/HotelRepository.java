package proyecto.vaigo.repository;

import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import proyecto.vaigo.model.entity.HotelEntity;
import proyecto.vaigo.model.entity.ViajesEntity;

import java.util.List;

@Repository
@Transactional
public interface HotelRepository extends JpaRepository<HotelEntity, Integer> {
    @Query(value = "SELECT * FROM hotel WHERE id_ciudad = :idd1",
            nativeQuery = true)
    public List<HotelEntity> findIDCiu(@Param("idd1") String idCiudad);
}
