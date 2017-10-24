package semear.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import semear.dao.CursoRepository;
import semear.model.Curso;

@Service
@Transactional
public class CursoService {
	
	private CursoRepository cursoRepository;

	public CursoService(CursoRepository cursoRepository) {
		this.cursoRepository = cursoRepository;
	}
	
	public List<Curso> findAll(){
		List<Curso> cursos = new ArrayList<>();
		
		for(Curso curso : cursoRepository.findAll()){
			cursos.add(curso);
		}
		
		return cursos;
	}
	
	
	public Curso findCurso(int id){
		return cursoRepository.findOne(id);
	}
	

}
