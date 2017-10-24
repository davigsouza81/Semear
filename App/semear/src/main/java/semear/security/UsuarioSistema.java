package semear.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UsuarioSistema extends User {

	private static final long serialVersionUID = 1L;
	
	private long id;
	private String nome;
	
	public UsuarioSistema(long id, String nome, String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
		this.id = id;
		this.nome = nome;
	}
	
	
	
	public long getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}
}