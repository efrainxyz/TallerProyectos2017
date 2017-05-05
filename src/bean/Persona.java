package bean;

public class Persona {
	private int id;
	private String nombre;
	private String apepat;
	private String apemat;
	private String tipdoc;
	private String numdoc;

	public Persona() {
		super();
	}

	public Persona(int id) {
		super();
		this.id = id;
	}
	
	public Persona(int id, String nombre, String apepat, String apemat, String tipdoc, String numdoc) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apepat = apepat;
		this.apemat = apemat;
		this.tipdoc = tipdoc;
		this.numdoc = numdoc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApepat() {
		return apepat;
	}

	public void setApepat(String apepat) {
		this.apepat = apepat;
	}

	public String getApemat() {
		return apemat;
	}

	public void setApemat(String apemat) {
		this.apemat = apemat;
	}

	public String getTipdoc() {
		return tipdoc;
	}

	public void setTipdoc(String tipdoc) {
		this.tipdoc = tipdoc;
	}

	public String getNumdoc() {
		return numdoc;
	}

	public void setNumdoc(String numdoc) {
		this.numdoc = numdoc;
	}
}
