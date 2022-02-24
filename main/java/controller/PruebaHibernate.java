package controller;
import java.util.List;

import dao.UsuarioDao;
import model.Usuario;

public class PruebaHibernate {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		UsuarioDao udao = new UsuarioDao();
		List<Usuario> usuarios = udao.seleccionarUsuario();
		
		for(Usuario u : usuarios) {
			System.out.println(u.toString());
		}		
	}
}
