package entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Carlos Iñiguez
 */

@Entity
@Table(name = "Movimiento")
public class Movimiento implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idMovimiento")
	private Integer id;

	@Temporal(TemporalType.DATE)
	private Date fecha;

	@Column
	private double monto;

	@Column
	private String concepto;

	@Enumerated
	private TipoMovimiento tipo;

	@OneToOne
	@JoinColumn
	private Cuenta origen;

	@OneToOne
	@JoinColumn
	private Cuenta destino;

	@OneToOne
	@JoinColumn
	private Categoria categoria;

	public Movimiento() {
	}

	public Movimiento(Date fecha, double monto, String concepto, TipoMovimiento tipo, Cuenta origen,
			Categoria categoria) {
		super();
		this.fecha = fecha;
		this.monto = monto;
		this.concepto = concepto;
		this.tipo = tipo;
		this.origen = origen;
		this.categoria = categoria;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public double getMonto() {
		return monto;
	}

	public void setMonto(double monto) {
		this.monto = monto;
	}

	public String getConcepto() {
		return concepto;
	}

	public void setConcepto(String concepto) {
		this.concepto = concepto;
	}

	public TipoMovimiento getTipo() {
		return tipo;
	}

	public void setTipo(TipoMovimiento tipo) {
		this.tipo = tipo;
	}

	public Cuenta getOrigen() {
		return origen;
	}

	public void setOrigen(Cuenta origen) {
		this.origen = origen;
	}

	public Cuenta getDestino() {
		return destino;
	}

	public void setDestino(Cuenta destino) {
		this.destino = destino;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @param ingreso
	 * @return
	 */
	public static void createIngreso(Movimiento ingreso) {


	}

	/**
	 * @param gasto
	 * @return
	 */
	public boolean createGasto(Movimiento gasto) {
		// TODO implement here
		return false;
	}

	/**
	 * @param ingreso
	 * @param egreso
	 */
	public void createTransferencia(Movimiento ingreso, Movimiento egreso) {
		// TODO implement here
	}

	/**
	 * @param id
	 * @param fecha
	 * @param monto
	 * @param concepto
	 * @return
	 */
	public boolean update(int id, Date fecha, double monto, String concepto) {
		// TODO implement here
		return false;
	}

	/**
	 * @param id
	 * @return
	 */
	public boolean delete(int id) {
		// TODO implement here
		return false;
	}

	/** Método que obtiene retorna la lista de movimientos de una cuenta **/
	@SuppressWarnings("unchecked")
	public static List<Movimiento> getAllByCuenta(int idCuenta) {
		EntityManager em=  Persistence.createEntityManagerFactory("persistencia").createEntityManager();
		Cuenta cuenta = Cuenta.getById(idCuenta);
		String consulta = "SELECT m FROM Movimiento m WHERE m.origen = :cuenta OR m.destino = :cuenta";
		Query query = em.createQuery(consulta);
		query.setParameter("cuenta", cuenta);
		return query.getResultList();
	}

	public static List<Movimiento> getAllByDate(Date fecha){
		return null;
	}

}