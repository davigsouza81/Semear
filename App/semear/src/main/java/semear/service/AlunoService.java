package semear.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import semear.dao.AlunoRepository;
import semear.model.Aluno;

@Service
@Transactional
public class AlunoService {
	
	private final AlunoRepository alunoRepository;

	public AlunoService(AlunoRepository alunoRepository) {
		this.alunoRepository = alunoRepository;
	}
	
	public List<Aluno> findAll(){
		List<Aluno> alunos = new ArrayList<>();
		
		for(Aluno aluno : alunoRepository.findAll()){
			alunos.add(aluno);
		}
		
		return alunos;
	}
	
	public void save(Aluno aluno){
		 alunoRepository.save(aluno);
	}
	
}
