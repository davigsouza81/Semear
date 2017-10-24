package semear.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import semear.security.UsuarioSistema;
import semear.service.CursoService;
import semear.service.InstituicaoService;

@Controller
public class MainController {
	
	@Autowired
	private InstituicaoService instituicaoService;
	
	@Autowired
	private CursoService cursoService;

	@GetMapping("/")
	public ModelAndView home(@AuthenticationPrincipal UsuarioSistema usuarioSistema){
		ModelAndView mv = new ModelAndView();
		
		if(usuarioSistema == null){
			mv.addObject("instituicoes", instituicaoService.findAll());
			mv.addObject("cursos", cursoService.findAll());
			mv.setViewName("login");
		}else{
			mv.setViewName("index");
		}
		
		return mv;
	}
	
	@GetMapping("/login")
	public String login(){
		return "redirect:/";
	}
	
	@GetMapping("/publicacoes-pendentes")
	public String publicacoesPendentes(){
		return "publicacoesPendentes";
	}
	
	@GetMapping("/enviar-arquivo")
	public String enviarArquivo(){
		return "formEnviarArquivo";
	}
}
