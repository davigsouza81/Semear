package semear.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//@Configuration
@EnableWebSecurity
public class SecurityWebConfig  extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private SemearUserDetailsService semearUserDetailsService;
	
	@Override
	  protected void configure(HttpSecurity http) throws Exception {
	    http
	        .authorizeRequests()
	            // Para qualquer requisição (anyRequest) é preciso estar 
	            // autenticado (authenticated).
	        	.antMatchers("/static/**", "/", "/aluno", "/teste2").permitAll()
	        	.antMatchers("/publicacoes-pendentes").hasRole("MANTER_PUBLICACAO")
	            .anyRequest().authenticated()
	        .and()
	        //.httpBasic()
	        .formLogin()
	        	.loginPage("/login").permitAll()
	    	.and()
	    		.rememberMe();
	  }
	 
	 @Override
		protected void configure(AuthenticationManagerBuilder builder) throws Exception {
			builder
				.userDetailsService(semearUserDetailsService)
				.passwordEncoder(new BCryptPasswordEncoder());
			
		}
	 
//Autenticacao em memoria
//	 @Override
//	  public void configure(AuthenticationManagerBuilder builder) throws Exception {
//	    builder
//	        .inMemoryAuthentication()
//	        .withUser("davi").password("123")
//	            .roles("USER")
//	        .and()
//	        .withUser("zico").password("123")
//	            .roles("USER");
//	  }
	 
//	 public static void main(String[] args) {
//			System.out.println(new BCryptPasswordEncoder().encode("123"));
//		}
}
