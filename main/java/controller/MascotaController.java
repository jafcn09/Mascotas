package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.jdbc.Blob;

import model.Mascota;
import model.Usuario;
import dao.MascotaDao;
import dao.UsuarioDao;

/**
 * Servlet implementation class MascotaCotroller
 */
public class MascotaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UsuarioDao uDao = new UsuarioDao();
	MascotaDao mDao = new MascotaDao();
	RequestDispatcher rd;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MascotaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if (action.equals("reservar")) {
			reservar(request,response );
		}else if (action.equals("listar")) {
			listar(request,response);
		}else if (action.equals("eliminar")) {
			eliminar(request,response);
		}else if(action.equals("ver")) {
			verDetalle(request,response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if (action.equals("listar")) {
			listar(request,response);
		}else if (action.equals("editar")) {
			editar(request,response);
		}else if (action.equals("add")) {
			crear(request,response);
		}else if (action.equals("Mascotas")) {
			irMascota(request,response);
		}else if (action.equals("Volver")) {
			irVolver(request,response);
		}else if (action.equals("addMascota")) {
			irAñadirMascota(request,response);
		}
	}
	
	/**=============== Rutas ===============*/
	
	protected void irMascota(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		rd = request.getRequestDispatcher("/views/mascota?action=listar");
		rd.forward(request, response);
	}
	
	protected void irVolver(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		rd = request.getRequestDispatcher("/views/mascota?action=listar");
		rd.forward(request, response);
	}
	
	protected void irAñadirMascota(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("../views/add-mascota.jsp");
	}
	
	/**=============== Funciones ===============*/
	
	protected void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String queryParam = request.getParameter("query");
		List<Mascota> mascotas = mDao.getMascotas(queryParam);
		request.setAttribute("mascotas", mascotas);
		rd = request.getRequestDispatcher("/views/home.jsp");
		rd.forward(request, response);
	}
	
	protected void reservar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idMascota = Integer.parseInt(request.getParameter("idMascota"));
		int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
		
		boolean reservado = mDao.reservarMascota(idMascota, idUsuario);
		rd = request.getRequestDispatcher("/views/mascota?action=listar");
		rd.forward(request, response);
	}
	
	protected void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idMascota = Integer.parseInt(request.getParameter("idMascota"));
		boolean eliminado = mDao.eliminarMascota(idMascota);
		request.setAttribute("eliminado", eliminado);
		rd = request.getRequestDispatcher("/views/mascota?action=listar");
		rd.forward(request, response);
	}
	
	protected void verDetalle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idMascota = Integer.parseInt(request.getParameter("idMascota"));
		Mascota mascota = mDao.obtenerMascota(idMascota);
		request.setAttribute("mascota", mascota);
		rd = request.getRequestDispatcher("/views/ver-mascota.jsp");
		rd.forward(request, response);
	}
	
	protected void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idMascota = Integer.parseInt(request.getParameter("idMascota"));
		String nombreMascota = request.getParameter("nombreMascota");
		int edad = Integer.parseInt(request.getParameter("edad"));
		String tipoMascota = request.getParameter("tipoMascota");
		String ciudad = request.getParameter("ciudad");
		String estatura = request.getParameter("estatura");
		String ubicacion = request.getParameter("ubicacion");
		String foto = request.getParameter("foto");
		//Blob foto = request.getParameter("foto");
		//File foto = new File("../storage/");
		//FileInputStream fis = new FileInputStream(foto);
		String controlMedico = request.getParameter("controlMedico");
		
		boolean editado = mDao.actualizarMascota(idMascota, nombreMascota, edad, tipoMascota, ciudad, estatura, ubicacion, foto, controlMedico);
		
		request.setAttribute("editado", editado);
		rd = request.getRequestDispatcher("/views/mascota?action=listar");
		rd.forward(request, response);
	}
	
	protected void crear(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombreMascota = request.getParameter("nombreMascota");
		int edad = Integer.parseInt(request.getParameter("edad"));
		String tipoMascota = request.getParameter("tipoMascota");
		String ciudad = request.getParameter("ciudad");
		String estatura = request.getParameter("estatura");
		String ubicacion = request.getParameter("ubicacion");
		String foto = request.getParameter("foto");
		//Blob foto = request.getParameter("foto");
		//File foto = new File("../storage/");
		//FileInputStream fis = new FileInputStream(foto);
		String controlMedico = request.getParameter("controlMedico");
				
		boolean creado = mDao.crearMascota(nombreMascota, edad, tipoMascota, ciudad, estatura, ubicacion, foto, controlMedico);
		
		if(creado) {
			rd = request.getRequestDispatcher("/views/mascota?action=listar");
			rd.forward(request, response);
			
		}else {
			String msg = "Ha ocurrido un error al crear la publicación.";
			request.setAttribute("message", msg);
			rd = request.getRequestDispatcher("/views/add-mascota.jsp");
			rd.forward(request, response);
		}
	}
}
