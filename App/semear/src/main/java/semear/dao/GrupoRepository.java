package semear.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import semear.model.Grupo;
import semear.model.Usuario;

public interface GrupoRepository extends CrudRepository<Grupo, Integer> {
	
	List<Grupo> findByUsuariosIn(Usuario usuario);

}
