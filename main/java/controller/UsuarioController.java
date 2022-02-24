package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.InstitucionesDao;
import dao.MascotaDao;
import dao.UsuarioDao;
import model.Institucione;
import model.Mascota;
import model.Usuario;

public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UsuarioDao uDao = new UsuarioDao();
	MascotaDao mDao = new MascotaDao();
	InstitucionesDao iDao = new InstitucionesDao();
	RequestDispatcher rd;
	
	  public UsuarioController() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	  
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
		}

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String action = request.getParameter("action");

			if (action.equals("Iniciar sesión")) {
				login(request,response);
			}else if(action.equals("Registrarme")) {
				registro(request,response);
			}else if(action.equals("Cerrar sesión")) {
				logout(request,response);
			}
			
			System.out.println("Estamos en el UsuarioController POST");
		}
		
	  protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html;charset=UTF-8");
	       HttpSession session = request.getSession(true);
	       
	       session.invalidate();
	       
	       rd = request.getRequestDispatcher("/views/index.jsp");
	       rd.forward(request, response);
	   }

	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String correo = request.getParameter("correo");
			String clave = request.getParameter("clave");
			
			HttpSession session = request.getSession();
			
			Usuario logged = uDao.login(correo, clave);
			List<Mascota> mascotas = mDao.getMascotas("");
			List<Institucione> instituciones = iDao.getInstituciones("");
			
			if (logged != null) {
				session.setAttribute("user", logged);
				session.setAttribute("mascotas", mascotas);
				session.setAttribute("instituciones", instituciones);
				rd = request.getRequestDispatcher("/views/home.jsp");
				rd.forward(request, response);
			}
			else {
				String msg = "Correo y/o contraseñas incorrectos.";
				request.setAttribute("message", msg);
				rd = request.getRequestDispatcher("/views/login.jsp");
				rd.forward(request, response);
			}
		}
		
	  protected void registro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  	String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			int edad = Integer.parseInt(request.getParameter("edad"));
			String correo = request.getParameter("correo");
			String clave = request.getParameter("clave");
			String sexo = request.getParameter("sexo");
			String dni = request.getParameter("dni");
			String rol = "usuario";
			String descripcion = "¡Hola! Soy un usuario de Salvando Patitas y voy a salvar a un animal.";
			String telefono = "+51 999 999 999";
			String estudios = "Universidad - Carrera";
			String apodo = "Sin apodo";
			
			boolean registrado = uDao.registrarUsuario(nombre, apellido, edad, correo, clave, sexo, dni, rol, descripcion, telefono, estudios, apodo);
			
			if(registrado) {
				String msg2 = "Cuenta creada correctamente. Ingresa tu correo y clave para ingresar a nuestro sistema.";
				request.setAttribute("message2", msg2);
				rd = request.getRequestDispatcher("/views/login.jsp");
				rd.forward(request, response);
			}else {
				String msg = "Ha ocurrido un error al registrarse.";
				request.setAttribute("message", msg);
				rd = request.getRequestDispatcher("/views/register.jsp");
				rd.forward(request, response);
			}
		}
}
