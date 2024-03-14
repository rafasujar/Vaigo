package proyecto.vaigo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import proyecto.vaigo.model.entity.PaisEntity;


@Repository
@Transactional
public interface PaisRepository extends JpaRepository<PaisEntity, Integer> {
}
