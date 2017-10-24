package semear.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import semear.model.Grupo;
import semear.model.Permissao;

public interface PermissaoRepository extends CrudRepository<Permissao, Long> {
	
	List<Permissao> findByGruposIn(Grupo grupo);

}