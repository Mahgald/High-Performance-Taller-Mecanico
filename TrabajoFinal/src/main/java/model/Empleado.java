package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Proxy;

@Entity
@Proxy(lazy=false)
public class Empleado {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String nombre;
	private String apellido;
	private String telefono;
	
	
	@OneToMany(mappedBy="empleado",fetch=FetchType.EAGER)
	private List<OrdenDeTrabajo> listaOrdenDeTrabajo = new ArrayList<OrdenDeTrabajo>();


	public Empleado() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public List<OrdenDeTrabajo> getListaOrdenDeTrabajo() {
		return listaOrdenDeTrabajo;
	}

	public void setListaOrdenDeTrabajo(List<OrdenDeTrabajo> listaOrdenDeTrabajo) {
		this.listaOrdenDeTrabajo = listaOrdenDeTrabajo;
	}

}
