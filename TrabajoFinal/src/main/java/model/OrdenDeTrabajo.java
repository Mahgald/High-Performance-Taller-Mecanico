package model;


import java.sql.Date;
import java.util.ArrayList;

import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.Proxy;

@Entity
@Proxy(lazy=false)
public class OrdenDeTrabajo{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String patente;
	private String marca;
	private String modelo;
	private Date fecha;
	private String detalle_Falla;
	private boolean estado;
	private int cantHoras;
	
	@ManyToOne(fetch=FetchType.EAGER, cascade=CascadeType.REFRESH)
	@JoinColumn(name="idPropietario")
	private Propietario propietario;
	
	
	@ManyToOne(fetch=FetchType.EAGER, cascade=CascadeType.REFRESH)
	@JoinColumn(name="idEmpleado")
	private Empleado empleado;
	
	
	@OneToMany(targetEntity=OrdenRepuesto.class, mappedBy="orden",fetch=FetchType.EAGER)
	private List<OrdenRepuesto> listaRepuesto = new ArrayList<OrdenRepuesto>();
	
	
	public List<OrdenRepuesto> getListaOrdenRepuesto() {
		return listaOrdenRepuesto;
	}

	public void setListaOrdenRepuesto(List<OrdenRepuesto> listaOrdenRepuesto) {
		this.listaOrdenRepuesto = listaOrdenRepuesto;
	}

	@OneToMany(targetEntity=OrdenRepuesto.class, mappedBy="orden",fetch=FetchType.EAGER)
	private List<OrdenRepuesto> listaOrdenRepuesto = new ArrayList<OrdenRepuesto>();
	
	
	public List<OrdenRepuesto> getListaRepuesto() {
		return listaRepuesto;
	}

	public void setListaRepuesto(List<OrdenRepuesto> listaRepuesto) {
		this.listaRepuesto = listaRepuesto;
		
	}

	public OrdenDeTrabajo() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Empleado getEmpleado() {
		return this.empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

	public Propietario getPropietario() {
		return this.propietario;
	}

	public void setPropietario(Propietario propietario) {
		this.propietario = propietario;
	}

	public String getPatente() {
		return this.patente;
	}

	public void setPatente(String patente) {
		this.patente = patente;
	}

	public String getMarca() {
		return this.marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return this.modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getdetalle_Falla() {
		return this.detalle_Falla;
	}

	public void setdetalle_Falla(String detalle_Falla) {
		this.detalle_Falla = detalle_Falla;
	}

	public boolean isEstado() {
		return this.estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public int getCantHoras() {
		return this.cantHoras;
	}

	public void setCantHoras(int cantHoras) {
		this.cantHoras = cantHoras;
	}


}
