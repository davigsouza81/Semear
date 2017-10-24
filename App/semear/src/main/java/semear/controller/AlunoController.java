package semear.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import semear.model.Aluno;
import semear.model.Curso;
import semear.model.Grupo;
import semear.model.Usuario;
import semear.service.AlunoService;
import semear.service.CursoService;
import semear.service.GrupoService;
import semear.util.Funcoes;

@Controller
@RequestMapping("/aluno")
public class AlunoController {
	@Autowired
	private AlunoService alunoService ;
	
	@Autowired
	private CursoService cursoService;
	
	@Autowired
	private GrupoService grupoService;
	
//	@PostMapping("/save-aluno")
//	public String saveAluno(@RequestBody Usuario usuario){
//		
//		System.out.println("-------- ALUNO ------------ ");
//		System.out.println( usuario.toString());
//		
//		
//		return "redirect:/login";
//		//return mv;
//	}
	
	
	@PostMapping
	public String saveAluno(@ModelAttribute Usuario usuario , @RequestParam String dia, @RequestParam String mes, @RequestParam String ano, BindingResult bindingResult){
		System.out.println("______________________________________________________________________________________");
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
		
		ModelAndView mv = new ModelAndView();
		
		return "redirect:/login";
		//return mv;
	}
}
