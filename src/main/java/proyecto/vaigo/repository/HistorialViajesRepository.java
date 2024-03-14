package proyecto.vaigo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import proyecto.vaigo.model.entity.HistorialviajesEntity;


@Repository
@Transactional
public interface HistorialViajesRepository extends JpaRepository<HistorialviajesEntity, Integer> {
}
