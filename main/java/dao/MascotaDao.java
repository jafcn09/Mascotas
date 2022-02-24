package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Mascota;
import model.Reserva;
import model.Usuario;
import utils.HibernateUtil;

public class MascotaDao {

public List<Mascota> seleccionarMascota(){
		
		List<Mascota> mascotas = new ArrayList<Mascota>();
		SessionFactory sessfact = HibernateUtil.getSessionFactory();
		
		Session session = sessfact.getCurrentSession();
		
		Transaction tr = null;
		
		try {
			
			tr = session.beginTransaction();
			mascotas = session.createQuery("Select m from Mascota m", Mascota.class).getResultList();
			
		}catch(Exception ex){
			
			if(tr!=null) 
				tr.rollback();
			
			ex.printStackTrace();
			mascotas = null; 
			
		}
		finally {
			session.close();
			sessfact.close();
		}
		
		return mascotas; 
		
	}
	
	
	public Mascota obtenerMascota(int idMascota) {
		Mascota mascota = new Mascota();
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();
		
		Session session = sessFact.getCurrentSession();
		
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			mascota = session.get(Mascota.class, idMascota);
			
		}
		catch (Exception ex) {
			
			if(tr!= null) 
				tr.rollback();
			
			ex.printStackTrace();
			mascota = null;  
		}
		finally {
			session.close();
			sessFact.close();
		}
		
		return mascota;
		
	}
	
	public boolean crearMascota(String nombreMascota, int edad, String tipoMascota, String ciudad, String estatura, String ubicacion, String foto, String controlMedico) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();		
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			Mascota mascota = new Mascota();
			
			mascota.setNombreMascota(nombreMascota);
			mascota.setEdad(edad);
			mascota.setTipoMascota(tipoMascota);
			mascota.setCiudad(ciudad);
			mascota.setEstatura(estatura);
			mascota.setUbicacion(ubicacion);
			mascota.setFoto(foto);
			mascota.setControlMedico(controlMedico);
			
			session.save(mascota);
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
	
	public boolean actualizarMascota(int idMascota, String nombreMascota, int edad, String tipoMascota, String ciudad, String estatura, String ubicacion, String foto, String controlMedico) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();		
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			Mascota mascota = session.get(Mascota.class, idMascota);
			
			mascota.setNombreMascota(nombreMascota);
			mascota.setEdad(edad);
			mascota.setTipoMascota(tipoMascota);
			mascota.setCiudad(ciudad);
			mascota.setEstatura(estatura);
			mascota.setUbicacion(ubicacion);
			mascota.setFoto(foto);
			mascota.setControlMedico(controlMedico);
			
			session.update(mascota);
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
	
	public boolean eliminarMascota(int idMascota) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();		
		Session session = sessFact.getCurrentSession();		
		Transaction tr = null;
		
		try {
			
			tr = session.beginTransaction();
			
			//Eliminar la mascota de la tabla de reservas
			Query<Reserva> query = (Query<Reserva>)session.createQuery("Delete Reserva r where id_mascota = " + idMascota);
			query.executeUpdate();
			
			Mascota mascota = session.get(Mascota.class, idMascota);
			
			session.delete(mascota);
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
	
	public List<Mascota> getMascotas(String filter){

		List<Mascota> mascotas = new ArrayList<Mascota>();
		
		SessionFactory sessfact = HibernateUtil.getSessionFactory();
		Session session = sessfact.getCurrentSession();	
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			String sql = "Select m from Mascota m";
			
			if (filter != null && !filter.equals("")) {
				sql += " where nombreMascota like '%" + filter + "%'";
			}
			Query<Mascota> query = (Query<Mascota>)session.createQuery(sql);
			mascotas = query.list();
		}catch(Exception ex){
			
			if(tr!=null) 
				tr.rollback();
			
			ex.printStackTrace();
			 
		}
		finally {
			session.close();
			sessfact.close();
		}
		return mascotas;
	}
	
public boolean reservarMascota(int idMascota, int idUsuario) {
		
		SessionFactory sessFact = HibernateUtil.getSessionFactory();
		Session session = sessFact.getCurrentSession();
		Transaction tr = null;
		
		try {
			tr = session.beginTransaction();
			Mascota mascota = (Mascota)session.get(Mascota.class, idMascota);
			mascota.setEstado(true);
			session.update(mascota);
			
			Usuario usuario = (Usuario)session.get(Usuario.class, idUsuario);
			Reserva reserva = new Reserva();
			reserva.setMascota(mascota);
			reserva.setUsuario(usuario);
			session.save(reserva);
			
			tr.commit();
			return true;
			
		}
		catch(Exception ex) {
			if (tr!=null) {
				tr.rollback();
			}
	        ex.printStackTrace(); 
	        return false;
		}
		finally {
			session.close();
			sessFact.close();
		}
	}

	
}
