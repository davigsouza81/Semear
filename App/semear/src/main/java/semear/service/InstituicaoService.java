package semear.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import semear.dao.InstituicaoRepository;
import semear.model.Instituicao;

@Service
@Transactional
public class InstituicaoService {
	
	private InstituicaoRepository instituicaoRepository;

	public InstituicaoService(InstituicaoRepository instituicaoRepository) {
		this.instituicaoRepository = instituicaoRepository;
	}
	
	public List<Instituicao> findAll(){
		List<Instituicao> instituicoes = new ArrayList<>();
		
		for(Instituicao instituicao : instituicaoRepository.findAll()){
			instituicoes.add(instituicao);
		}
		
		return instituicoes;
	}
	
	

}
