package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the instituciones database table.
 * 
 */
@Entity
@Table(name="instituciones")
@NamedQuery(name="Institucione.findAll", query="SELECT i FROM Institucione i")
public class Institucione implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_institucion")
	private int idInstitucion;

	@Lob
	private String descripcion;

	private String objetivo;

	private String titulo;

	private String ubicacion;

	public Institucione() {
	}

	public int getIdInstitucion() {
		return this.idInstitucion;
	}

	public void setIdInstitucion(int idInstitucion) {
		this.idInstitucion = idInstitucion;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getObjetivo() {
		return this.objetivo;
	}

	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}

	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getUbicacion() {
		return this.ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

}