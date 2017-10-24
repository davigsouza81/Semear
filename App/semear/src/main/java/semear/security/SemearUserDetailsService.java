package semear.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import semear.dao.GrupoRepository;
import semear.dao.PermissaoRepository;
import semear.dao.UsuarioRepository;
import semear.model.Usuario;
import semear.model.Grupo;
import semear.model.Permissao;

@Component
public class SemearUserDetailsService implements UserDetailsService{
	@Autowired
	private UsuarioRepository usuarios;

	@Autowired
	private GrupoRepository grupos;
	
	@Autowired
	private PermissaoRepository permissoes;

	@Override
	public UserDetails loadUserByUsername(String nomeUsuario) throws UsernameNotFoundException {
		Usuario usuario = usuarios.findByNomeUsuario(nomeUsuario);
		
		if (usuario == null) {
			throw new UsernameNotFoundException("Usuário não encontrado!");
		}
		
		return new UsuarioSistema(usuario.getId(), usuario.getNome(), usuario.getNomeUsuario(), usuario.getSenha(), authorities(usuario));
	}
	
	public Collection<? extends GrantedAuthority> authorities(Usuario usuario) {
		return authorities(grupos.findByUsuariosIn(usuario));
	}
	
	public Collection<? extends GrantedAuthority> authorities(List<Grupo> grupos) {
		Collection<GrantedAuthority> auths = new ArrayList<>();
		
		for (Grupo grupo: grupos) {
			List<Permissao> lista = permissoes.findByGruposIn(grupo);
			
			for (Permissao permissao: lista) {
				auths.add(new SimpleGrantedAuthority("ROLE_" + permissao.getNome()));
			}
		}
		
		return auths;
	}
}
