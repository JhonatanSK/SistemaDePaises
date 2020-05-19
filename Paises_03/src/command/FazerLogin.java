package command;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;
import utils.AlgoritmoCripto;

public class FazerLogin implements Command {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("username");
		String senha = request.getParameter("passwd");
		Usuario usuario = new Usuario();
		usuario.setUsername(nome);
		
		AlgoritmoCripto crypto = new AlgoritmoCripto();
		UsuarioService service = new UsuarioService();
		
		try {			
			String senhaCrypto = crypto.cryptoSHA(senha);
			usuario.setPassword(senhaCrypto);
			
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
	
		if (service.validar(usuario)) {
			HttpSession session = request.getSession();
			session.setAttribute("logado", usuario);
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("Login.jsp");
			throw new ServletException("Usu�rio/Senha inv�lidos");
		}
		
	}
}