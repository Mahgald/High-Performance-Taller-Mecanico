package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Proxy;

@Entity
@Proxy(lazy=false)
public class OrdenRepuesto {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	private int cantRepuestos;


	@ManyToOne(targetEntity=OrdenDeTrabajo.class)
	@JoinColumn(name="idOrdenDeTrabajo")
	private OrdenDeTrabajo orden;
	
	@ManyToOne(targetEntity=Repuesto.class)
	@JoinColumn(name="idRepuesto")
	private Repuesto repuesto;
	
	public OrdenRepuesto() {
	}

	public Long getId() {
		return this.id;
	}

	public OrdenDeTrabajo getOrden() {
		return orden;
	}

	public void setOrden(OrdenDeTrabajo orden) {
		this.orden = orden;
	}

	public Repuesto getRepuesto() {
		return repuesto;
	}

	public void setRepuesto(Repuesto repuesto) {
		this.repuesto = repuesto;
	}

	public int getCantRepuestos() {
		return cantRepuestos;
	}

	public void setCantRepuestos(int cantRepuestos) {
		this.cantRepuestos = cantRepuestos;
	}

	public void setId(Long id) {
		this.id = id;
	}

	



}
