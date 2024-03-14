package proyecto.vaigo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import proyecto.vaigo.model.entity.UsuariosEntity;

import java.util.List;


@Repository
@Transactional
public interface UsuariosRepository extends JpaRepository<UsuariosEntity, Integer> {
    @Query(value = "SELECT * FROM usuarios WHERE CORREO = :idc AND PASSWORD = :idco",
            nativeQuery = true)
    public UsuariosEntity findUsuario(@Param("idc") String correo, @Param("idco") String pass);

}
