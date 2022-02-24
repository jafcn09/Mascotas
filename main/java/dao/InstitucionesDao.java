package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Institucione;
import model.Mascota;
import utils.HibernateUtil;

public class InstitucionesDao {
public List<Institucione> seleccionarInstitucion(){
		
		List<Institucione> institucion = new ArrayList<Institucione>();
		SessionFactory sessfact = HibernateUtil.getSessionFactory();
		
		Session session = sessfact.getCurrentSession();
		
		Transaction tr = null;
		
		try {
			
			tr = session.beginTransaction();
			institucion = session.createQuery("select i from Institucione i", Institucione.class).getResultList();
			
		}catch(Exception ex){
			
			if(tr!=null) 
				tr.rollback();
			
			ex.printStackTrace();
			institucion = null; 
			
		}
		finally {
			session.close();
			sessfact.close();
		}
		
		return institucion; 
		
	}
	
	
	public Institucione obtenerInstitucion(int idInstitucion) {
		Institucione institucion = new Institucione();
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();
		
		Session session = sessFact.getCurrentSession();
		
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			institucion = session.get(Institucione.class, idInstitucion);
			
		}
		catch (Exception ex) {
			
			if(tr!= null) 
				tr.rollback();
			
			ex.printStackTrace();
			institucion = null;  
		}
		finally {
			session.close();
			sessFact.close();
		}
		
		return institucion;
		
	}
	
	public boolean crearInstitucion(String titulo, String descripcion, String objetivo, String ubicacion) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();		
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			Institucione institucion = new Institucione();
			
			institucion.setTitulo(titulo);
			institucion.setDescripcion(descripcion);
			institucion.setObjetivo(objetivo);
			institucion.setUbicacion(ubicacion);
			
			session.save(institucion);
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
	
	public boolean actualizarInstitucion(int id_institucion, String titulo, String descripcion, String objetivo, String ubicacion) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();	
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			Institucione institucion = session.get(Institucione.class, id_institucion);
			institucion.setTitulo(titulo);
			institucion.setDescripcion(descripcion);
			institucion.setObjetivo(objetivo);
			institucion.setUbicacion(ubicacion);
		
			
			session.update(institucion);
			tr.commit();
			return true; 
			
		}catch (Exception ex) {
			
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
	
	public boolean eliminarInstitucion(int idInstitucion) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();		
		Transaction tr = null;
		
		try {
			
			tr = session.beginTransaction();
			
			Institucione institucion = session.get(Institucione.class, idInstitucion);
			
			session.delete(institucion);
			tr.commit();
			return true;
			
			
		}catch (Exception ex) {
			
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
	
	public List<Institucione> getInstituciones(String filter){

		List<Institucione> instituciones = new ArrayList<Institucione>();
		
		SessionFactory sessfact = HibernateUtil.getSessionFactory();		
		Session session = sessfact.getCurrentSession();	
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			String sql = "select i from Institucione i";
			
			if (filter != null && !filter.equals("")) {
				sql += " where titulo like '%" + filter + "%'";
			}
			Query<Institucione> query = (Query<Institucione>)session.createQuery(sql);
			instituciones = query.list();
		}catch(Exception ex){
			
			if(tr!=null) 
				tr.rollback();
			
			ex.printStackTrace();
			 
		}
		finally {
			session.close();
			sessfact.close();
		}
		return instituciones;
	}
	
}
