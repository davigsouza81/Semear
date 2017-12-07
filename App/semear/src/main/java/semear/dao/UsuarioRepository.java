package semear.dao;

//import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import semear.model.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, Integer> {
	Usuario findByNomeUsuario(String nomeUsuario);
}
