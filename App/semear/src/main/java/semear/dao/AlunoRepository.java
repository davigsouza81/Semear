package semear.dao;

import org.springframework.data.repository.CrudRepository;

import semear.model.Aluno;

public interface AlunoRepository extends CrudRepository<Aluno, Integer> {

}
