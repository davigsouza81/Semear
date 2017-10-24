package semear.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "tb_usuario")
public class Usuario{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String nome;
	private String sobrenome;
	private String nomeUsuario;
	private String email;
	private String senha;
	@Temporal(TemporalType.DATE)
	private Date dtNascimento;
	private String sexo;
	@Temporal(TemporalType.TIMESTAMP)
	private Date dtCadastro;
	private boolean status;
	private String linkFotoPerfil;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "tb_usuario_curso", joinColumns = { @JoinColumn(name = "fk_tb_usuario_id") }, inverseJoinColumns = {
			@JoinColumn(name = "fk_tb_curso_id") })
	private List<Curso> cursos;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "tb_usuario_grupo", joinColumns = { @JoinColumn(name = "fk_tb_usuario_id") }, inverseJoinColumns = {
			@JoinColumn(name = "fk_tb_grupo_id") })
	private List<Grupo> grupos;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "tb_usuario_permissao", joinColumns = { @JoinColumn(name = "fk_tb_usuario_id") }, inverseJoinColumns = {
			@JoinColumn(name = "fk_tb_permissao_id") })
	List<Permissao> permissoes;
	
//	@OneToOne(mappedBy="usuario",cascade=CascadeType.ALL)
//	private Aluno aluno;
//	
//	public Aluno getAluno(){
//		return aluno;
//	}
//	
//	public void setAluno(Aluno aluno){
//		this.aluno = aluno;
//	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Date getDtNascimento() {
		return dtNascimento;
	}

	public void setDtNascimento(Date dtNascimento) {
		this.dtNascimento = dtNascimento;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Date getDtCadastro() {
		return dtCadastro;
	}

	public void setDtCadastro(Date dtCadastro) {
		this.dtCadastro = dtCadastro;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getLinkFotoPerfil() {
		return linkFotoPerfil;
	}

	public void setLinkFotoPerfil(String linkFotoPerfil) {
		this.linkFotoPerfil = linkFotoPerfil;
	}

	public List<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nome=" + nome + ", sobrenome=" + sobrenome + ", nomeUsuario=" + nomeUsuario
				+ ", email=" + email + ", senha=" + senha + ", dtNascimento=" + dtNascimento + ", sexo=" + sexo
				+ ", dtCadastro=" + dtCadastro + ", status=" + status + ", linkFotoPerfil=" + linkFotoPerfil
				+ ", cursos=" + cursos + "grupos=" + grupos + "]";
	}
	
	
	
	//Alga works
	public List<Grupo> getGrupos() {
		return grupos;
	}
	
	public void setGrupos(List<Grupo> grupos) {
		this.grupos = grupos;
	}
	
	public List<Permissao> getPermissoes() {
		return permissoes;
	}

	public void setPermissoes(List<Permissao> permissoes) {
		this.permissoes = permissoes;
	}

//	@Override
//	public int hashCode() {
//		final int prime = 31;
//		int result = 1;
//		result = prime * result + ((id == null) ? 0 : id.hashCode());
//		return result;
//	}

//	@Override
//	public boolean equals(Object obj) {
//		if (this == obj)
//			return true;
//		if (obj == null)
//			return false;
//		if (getClass() != obj.getClass())
//			return false;
//		Usuario other = (Usuario) obj;
//		if (id == null) {
//			if (other.id != null)
//				return false;
//		} else if (!id.equals(other.id))
//			return false;
//		return true;
//	}

	

}
