package proyecto.vaigo.repository;

import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import proyecto.vaigo.model.entity.ViajesEntity;
import proyecto.vaigo.model.entity.ViajesimagenesEntity;

import java.util.List;
import java.util.Optional;

@Repository
@Transactional
public interface ViajesImagenesRepository extends JpaRepository<ViajesimagenesEntity, Integer>{
    @Query(value = "SELECT * FROM viajesimagenes WHERE id_viajes = :idc1",
            nativeQuery = true)
    public Optional <ViajesimagenesEntity> findImagenViaje(@Param("idc1") int idCiudad);

    public List<ViajesimagenesEntity> findAllByIdViajes(int idViajes);
}
