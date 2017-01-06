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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Proxy;

@Entity
@Proxy(lazy=false)
public class Repuesto {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String nombre;
	private int stock;
	private float precio;
	
	@OneToMany(targetEntity=OrdenRepuesto.class, mappedBy="repuesto",fetch=FetchType.EAGER)
	private List<OrdenRepuesto> listaOrdenRepuesto = new ArrayList<OrdenRepuesto>();

		
	public Repuesto() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<OrdenRepuesto> getListaOrdenDeTrabajo() {
		return listaOrdenRepuesto;
	}

	public void setListaOrdenDeTrabajo(List<OrdenRepuesto> listaOrdenDeTrabajo) {
		this.listaOrdenRepuesto = listaOrdenDeTrabajo;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getStock() {
		return this.stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public float getPrecio() {
		return this.precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

	
}
