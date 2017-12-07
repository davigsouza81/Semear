package semear.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import semear.dao.UsuarioRepository;
import semear.model.Usuario;

@Service
@Transactional
public class UsuarioService {
	
	private final UsuarioRepository usuarioRepository;

	public UsuarioService(UsuarioRepository usuarioRepository) {
		this.usuarioRepository = usuarioRepository;
	}
	
	
	public Usuario findBynomeUsuario(String nomeUsuario){
		return usuarioRepository.findByNomeUsuario(nomeUsuario);
	}
	
	public List<Usuario> findAll(){
		List<Usuario> usuarios = new ArrayList<>();
		
		for(Usuario usuario : usuarioRepository.findAll()){
			usuarios.add(usuario);
		}
		
		return usuarios;
	}
	
	public Usuario findUsuario(int id){
		return usuarioRepository.findOne(id);
	}
	
	public void save(Usuario usuario){
		usuarioRepository.save(usuario);
	}
	
}
