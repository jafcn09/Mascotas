package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Institucione;
import dao.InstitucionesDao;

/**
 * Servlet implementation class AulaController
 */
public class InstitucionesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	InstitucionesDao iDao = new InstitucionesDao();
	RequestDispatcher rd;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InstitucionesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if (action.equals("listar")) {
			listar(request,response );
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
		}else if(action.equals("Instituciones")) {
			irInstitucion(request,response);
		}else if (action.equals("Volver")) {
			irVolver(request,response);
		}else if (action.equals("Perfil")) {
			irPerfil(request,response);
		}else if (action.equals("addInstitucion")) {
			irAñadirInstitucion(request,response);
		}
	}
	
	/**=============== Rutas ===============*/
	
	protected void irInstitucion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		rd = request.getRequestDispatcher("/views/institucion?action=listar");
		rd.forward(request, response);
	}
	
	protected void irVolver(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		rd = request.getRequestDispatcher("/views/institucion?action=listar");
		rd.forward(request, response);
	}
	
protected void irPerfil(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("../views/perfil.jsp");
	}
	
	protected void irAñadirInstitucion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("../views/add-institucion.jsp");
	}
	
	/**=============== Funciones ===============*/
	
	protected void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String queryParam = request.getParameter("query");
		List<Institucione> instituciones = iDao.getInstituciones(queryParam);
		request.setAttribute("instituciones", instituciones);
		rd = request.getRequestDispatcher("/views/instituciones.jsp");
		rd.forward(request, response);
	}
	
	protected void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idInstitucion = Integer.parseInt(request.getParameter("idInstitucion"));
		boolean eliminado = iDao.eliminarInstitucion(idInstitucion);
		request.setAttribute("eliminado", eliminado);
		rd = request.getRequestDispatcher("/views/institucion?action=listar");
		rd.forward(request, response);
	}
	
	protected void verDetalle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idInstitucion= Integer.parseInt(request.getParameter("idInstitucion"));
		Institucione institucion = iDao.obtenerInstitucion(idInstitucion);
		request.setAttribute("institucion", institucion);
		rd = request.getRequestDispatcher("/views/ver-institucion.jsp");
		rd.forward(request, response);
	}
	
	protected void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id_institucion = Integer.parseInt(request.getParameter("id_institucion"));
		String titulo = request.getParameter("titulo");
		String descripcion = request.getParameter("descripcion");
		String objetivo = request.getParameter("objetivo");
		String ubicacion = request.getParameter("ubicacion");
		
		boolean editado = iDao.actualizarInstitucion(id_institucion, titulo, descripcion, objetivo, ubicacion);
		
		request.setAttribute("editado", editado);
		rd = request.getRequestDispatcher("/views/institucion?action=listar");
		rd.forward(request, response);
		
	}
	
	protected void crear(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String titulo = request.getParameter("titulo");
		String descripcion = request.getParameter("descripcion");
		String objetivo = request.getParameter("objetivo");
		String ubicacion = request.getParameter("ubicacion");
		
		boolean creado = iDao.crearInstitucion(titulo, descripcion, objetivo, ubicacion);
		
		if(creado) {
			rd = request.getRequestDispatcher("/views/institucion?action=listar");
			rd.forward(request, response);
			
		}else {
			String msg = "Ha ocurrido un error al crear la publicación";
			request.setAttribute("message", msg);
			rd = request.getRequestDispatcher("/views/add-institucion.jsp");
			rd.forward(request, response);
		}
	}
}
