package semear.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import semear.security.UsuarioSistema;
import semear.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
//	@GetMapping("logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		
//		return "redirect:login";
//	}
	
//	@RequestMapping("efetuaLogin")
//	public String efetuaLogin(Usuario usuario, HttpSession session) {
//	  if(usuarioService.existeUsuario(usuario)) {
//	    session.setAttribute("usuarioLogado", usuario);
//	    return "menu";
//	  }
//	  return "redirect:loginForm";
//	}
	
	
	
	//modificar
//		public void efetuarLogin(HttpSession session){
//			session.setAttribute("usuarioLogado", usuarioService.findUsuario(1));
//		}
		
//		//modificar
//		public boolean statusSession(HttpServletRequest request){
//			efetuarLogin(request.getSession());
//			return request.getSession().getAttribute("usuarioLogado") != null;
//		}

//		@GetMapping("/info-conta")
//		public String infoConta(HttpServletRequest request){
//			if(statusSession(request)){
//			request.setAttribute("usuario", request.getSession().getAttribute("usuarioLogado"));
//			
//			return "infoConta";
//			}
//			return "redirect:login";
//		}
		
		@GetMapping("/info-conta")
		public ModelAndView infoConta(@AuthenticationPrincipal UsuarioSistema usuarioSistema){
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("usuario", usuarioService.findUsuario((int) usuarioSistema.getId()));
			mv.setViewName("infoConta");
			
			return mv;
		}
}
