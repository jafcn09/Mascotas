package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Institucione;
import model.Mascota;
import model.Usuario;
import utils.HibernateUtil;

public class UsuarioDao {
	
   public Usuario login(String correo, String clave) {
		
		Usuario usuario = null;
		
		SessionFactory sessfact = HibernateUtil.getSessionFactory();		
		Session session = sessfact.getCurrentSession();
		Transaction tr = null;
		
		try {
			
			tr = session.beginTransaction();
			Query<Usuario> query = (Query<Usuario>)session.createQuery("Select u from Usuario u where u.correo = '"+ correo +"' and u.clave = '"+ clave +"'");
			List<Usuario> usuarios = query.list();
			
			if(usuarios.size()>0) {
				usuario = usuarios.get(0);
				return usuario; 
			}
			else {
				return null;
			}
			
		}catch(Exception ex){
			
			if(tr!=null) 
				tr.rollback();
			
			ex.printStackTrace();
			 return null;
			
		}
		finally {
			session.close();
			sessfact.close();
		}
		
	}
   
	public boolean crear(int id_usuario, String nombre, String apellido, int edad, String correo, String clave, String sexo, String dni, String rol) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();		
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			Usuario usuario = new Usuario();
			usuario.setIdUsuario(id_usuario);
			usuario.setNombre(nombre);
			usuario.setApellido(apellido);
			usuario.setEdad(edad);
			usuario.setCorreo(correo);
			usuario.setClave(clave);
			usuario.setSexo(sexo);
			usuario.setDni(dni);
			usuario.setRol(rol);
			
			session.save(usuario);
			tr.commit();
			return true; 			
			
		} catch (Exception ex) {
			
			if(tr!= null) 
				tr.rollback();
			
			ex.printStackTrace();
			return false;   
		}
		finally {
			session.close();
			sessFact.close();
		}		
	}
	
	public List<Usuario> seleccionarUsuario(){
		
		List<Usuario> usuarios = new ArrayList<Usuario>();
		SessionFactory sessfact = HibernateUtil.getSessionFactory();
		
		Session session = sessfact.getCurrentSession();
		
		Transaction tr = null;
		
		try {
			
			tr = session.beginTransaction();
			usuarios = session.createQuery("Select a from Usuario a", Usuario.class).getResultList();
			
		}catch(Exception ex){
			
			if(tr!=null) 
				tr.rollback();
			
			ex.printStackTrace();
			usuarios = null; 
		}
		finally {
			session.close();
			sessfact.close();
		}
		return usuarios; 
	}
	
	public boolean registrarUsuario(String nombre, String apellido, int edad, String correo, String clave, String sexo, String dni, String rol, String descripcion, String telefono, String estudios, String apodo) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();		
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			Usuario usuario = new Usuario();
			
			usuario.setNombre(nombre);
			usuario.setApellido(apellido);
			usuario.setEdad(edad);
			usuario.setCorreo(correo);
			usuario.setClave(clave);
			usuario.setSexo(sexo);
			usuario.setDni(dni);
			usuario.setRol(rol);
			usuario.setDescripcion(descripcion);
			usuario.setTelefono(telefono);
			usuario.setEstudios(estudios);
			usuario.setApodo(apodo);
			
			
			session.save(usuario);
			tr.commit();
			return true;
			
		} catch (Exception ex) {
			
			if(tr!= null) 
				tr.rollback();
			
			ex.printStackTrace();
			return false;
		}
		finally {
			session.close();
			sessFact.close();
		}
	}
	
}
