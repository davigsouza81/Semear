package semear.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import semear.dao.GrupoRepository;
import semear.model.Grupo;

@Service
@Transactional
public class GrupoService {

	private GrupoRepository grupoRepository;
	
	
	
	public GrupoService(GrupoRepository grupoRepository) {
		this.grupoRepository = grupoRepository;
	}



	public Grupo findGrupo(int id){
		return grupoRepository.findOne(id);
	}
	
	
}
