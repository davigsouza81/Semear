package semear.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.csrf.DefaultCsrfToken;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import semear.model.Aluno;
import semear.model.Curso;
import semear.model.Grupo;
import semear.model.Usuario;
import semear.service.AlunoService;
import semear.service.CursoService;
import semear.service.GrupoService;
import semear.service.InstituicaoService;
import semear.service.UsuarioService;
import semear.util.Funcoes;

@RestController
public class SemearRestController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private AlunoService alunoService ;
	
	@Autowired
	private InstituicaoService instituicaoService;
	
	@Autowired
	private CursoService cursoService;
	
	@Autowired
	private GrupoService grupoService;
	
	@GetMapping("/hello")
	public String hello(){
		return "Hello World!!!";
	}
	
	@GetMapping("/all-users")
	public String allUsers(){
		return usuarioService.findAll().toString();
	}
	
	@GetMapping("/all-students")
	public String allStudents(){
		return alunoService.findAll().toString();
	}
	
	@GetMapping("/all-institution")
	public String allInstitutions(){
		return instituicaoService.findAll().toString();
	}
	
	@GetMapping("/all-course")
	public String allCourse(){
		return cursoService.findAll().toString();
	}
	
	
	@PostMapping("/teste")
	public String teste(@ModelAttribute Usuario usuario, @RequestParam String dia, @RequestParam String mes, @RequestParam String ano){
		List<Curso> cursos = new ArrayList<>();
		Curso curso = cursoService.findCurso(1);
		cursos.add(curso);
		
		List<Grupo> grupos = new ArrayList<>();
		Grupo grupo = grupoService.findGrupo(3);
		grupos.add(grupo);
		
		usuario.setCursos(cursos);
		usuario.setGrupos(grupos);
		usuario.setDtNascimento(Funcoes.strToDate(dia+"/"+mes+"/"+ano));
		usuario.setSenha(new BCryptPasswordEncoder().encode(usuario.getSenha()));
		usuario.setDtCadastro(new Date());
		
		Aluno aluno = new Aluno();
		aluno.setUsuario(usuario);
		
		alunoService.save(aluno);
		
		return aluno.toString();
	}
	
	@GetMapping("/teste2")
	public String teste2(HttpServletRequest request, HttpSession session){
		//return request.getSession().getValueNames();
		//return session.getAttributeNames().nextElement();
		//org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN
		DefaultCsrfToken csrfToken = (DefaultCsrfToken) session.getAttribute("org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN");
		return csrfToken.getHeaderName();
	}
	
	
}
