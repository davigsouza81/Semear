package semear.controller;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cursos")
public class InstituicaoController {
	
	@GetMapping("/{instituicao}")
	public ModelAndView informacoesInstituicao(@PathVariable String instituicao, @RequestParam Optional<String> pagina){
		ModelAndView mv = new ModelAndView();
		mv.addObject("mode", "MODE_CURSOS");
		if(pagina.isPresent()){
			if(pagina.get().equals("sobre"))
				mv.addObject("mode", "MODE_SOBRE");
		}
		
		mv.setViewName("instituicao");
		return mv;
	}


}
