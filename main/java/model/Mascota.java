package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the mascotas database table.
 * 
 */
@Entity
@Table(name="mascotas")
@NamedQuery(name="Mascota.findAll", query="SELECT m FROM Mascota m")
public class Mascota implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_mascota")
	private int idMascota;

	private String ciudad;

	@Column(name="control_medico")
	private String controlMedico;

	private int edad;

	private boolean estado;

	private String estatura;

	private String foto;

	private String nombreMascota;

	private String tipoMascota;

	private String ubicacion;

	//bi-directional many-to-one association to Reserva
	@OneToMany(mappedBy="mascota")
	private List<Reserva> reservas;

	public Mascota() {
	}

	public int getIdMascota() {
		return this.idMascota;
	}

	public void setIdMascota(int idMascota) {
		this.idMascota = idMascota;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getControlMedico() {
		return this.controlMedico;
	}

	public void setControlMedico(String controlMedico) {
		this.controlMedico = controlMedico;
	}

	public int getEdad() {
		return this.edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public boolean getEstado() {
		return this.estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public String getEstatura() {
		return this.estatura;
	}

	public void setEstatura(String estatura) {
		this.estatura = estatura;
	}

	public String getFoto() {
		return this.foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getNombreMascota() {
		return this.nombreMascota;
	}

	public void setNombreMascota(String nombreMascota) {
		this.nombreMascota = nombreMascota;
	}

	public String getTipoMascota() {
		return this.tipoMascota;
	}

	public void setTipoMascota(String tipoMascota) {
		this.tipoMascota = tipoMascota;
	}

	public String getUbicacion() {
		return this.ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public List<Reserva> getReservas() {
		return this.reservas;
	}

	public void setReservas(List<Reserva> reservas) {
		this.reservas = reservas;
	}

	public Reserva addReserva(Reserva reserva) {
		getReservas().add(reserva);
		reserva.setMascota(this);

		return reserva;
	}

	public Reserva removeReserva(Reserva reserva) {
		getReservas().remove(reserva);
		reserva.setMascota(null);

		return reserva;
	}
	
	@Override
	public String toString() {
		return "Mascota [idMascota=" + idMascota + ", nombreMascota=" + nombreMascota + ", edad=" + edad + ", tipoMascota="
				+ tipoMascota + ", estatura=" + estatura + ", ubicacion=" + ubicacion + ", ciudad=" + ciudad + ", controlMedico="
				+ controlMedico + ", foto=" + foto + "]";
	}

}