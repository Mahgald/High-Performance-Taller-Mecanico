package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Proxy;

@Entity
@Proxy(lazy=false)
public class Propietario {

	@Id	
	private long dni;
	
	private String nombre;
	private String apellido;
	private String direccion;
	private String telefono;

	@OneToMany(mappedBy="propietario",fetch=FetchType.EAGER)
	private List<OrdenDeTrabajo> listaOrdenDeTrabajo = new ArrayList<OrdenDeTrabajo>();
	
	
	public List<OrdenDeTrabajo> getListaOrdenDeTrabajo() {
		return listaOrdenDeTrabajo;
	}

	public void setListaOrdenDeTrabajo(List<OrdenDeTrabajo> listaOrdenDeTrabajo) {
		this.listaOrdenDeTrabajo = listaOrdenDeTrabajo;
	}

	public Propietario() {
	}

	public long getDni() {
		return this.dni;
	}

	public void setDni(long dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	
}
