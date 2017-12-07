package semear.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
//import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_curso")
public class Curso{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private String nome;

	private String modalidade;

	private String grau;

	@ManyToOne
	@JoinColumn(name = "fk_tb_instituicao_id")
	private Instituicao instituicao;
	
	
	public Curso() {}

	public Curso(int id) {
		this.id = id;
	}

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

	public String getModalidade() {
		return modalidade;
	}

	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}

	public String getGrau() {
		return grau;
	}

	public void setGrau(String grau) {
		this.grau = grau;
	}

	public Instituicao getInstituicao() {
		return instituicao;
	}

	public void setInstituicao(Instituicao instituicao) {
		this.instituicao = instituicao;
	}

	
	
	@Override
	public String toString() {
		return "Curso [id=" + id + ", nome=" + nome + ", modalidade=" + modalidade + ", grau=" + grau + ", instituicao="
				+ instituicao.toString() + "]";
	}

	
	
	
}
