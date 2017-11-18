package semear.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import semear.security.UsuarioSistema;
import semear.service.UsuarioService;

@Controller
@RequestMapping("/")
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@GetMapping("{nomeUsuario}")
	public ModelAndView perfilUsuario(@AuthenticationPrincipal UsuarioSistema usuarioSistema, @PathVariable String nomeUsuario,  @RequestParam Optional<String> pagina){
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("mode", "MODE_PUBLICACOES");
		if(pagina.isPresent()){
			if(pagina.get().equals("inscricoes"))
				mv.addObject("mode", "MODE_INSCRICOES");
			else if(pagina.get().equals("sobre"))
				mv.addObject("mode", "MODE_SOBRE");
		}
		mv.setViewName(usuarioSistema.getUsername().equals(nomeUsuario)? "perfilUsuario" : "reditect: " + nomeUsuario);
		
		return mv;
	}
	
	@GetMapping("/info-conta")
	public ModelAndView infoConta(@AuthenticationPrincipal UsuarioSistema usuarioSistema) {

		ModelAndView mv = new ModelAndView();
		mv.addObject("usuario", usuarioService.findUsuario(usuarioSistema.getUsuario().getId()));
		mv.setViewName("infoConta");

		return mv;
	}
}
