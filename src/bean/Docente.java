package bean;

public class Docente {

	private int id;
	private String nombre;
	private String apepat;
	private String apemat;
	private String pais;
	private long numdoc;
	private String fecini;
	private String ley;
	private String maygra;
	private String menmay;
	private String uni;
	private String paiuni;
	private String pregrado;
	private String maestria;
	private String doctorado;
	private String cat;
	private String regded;
	private int horcla;
	private int horact;
	private int tothor;
	private String docinv;
	private String dina;
	private String peraca;
	private String obs;
	
	public Docente() {
		super();
	}	
	
	
	public Docente(String nombre, String apepat, String apemat, long numdoc) {
		super();
		this.nombre = nombre;
		this.apepat = apepat;
		this.apemat = apemat;
		this.numdoc = numdoc;
	}



	public Docente(int id, String nombre, String apepat, String apemat, String pais, long numdoc, String fecini,
			String ley, String maygra, String menmay, String uni, String paiuni, String pregrado, String maestria,
			String doctorado, String cat, String regded, int horcla, int horact, int tothor, String docinv, String dina,
			String peraca, String obs) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apepat = apepat;
		this.apemat = apemat;
		this.pais = pais;
		this.numdoc = numdoc;
		this.fecini = fecini;
		this.ley = ley;
		this.maygra = maygra;
		this.menmay = menmay;
		this.uni = uni;
		this.paiuni = paiuni;
		this.pregrado = pregrado;
		this.maestria = maestria;
		this.doctorado = doctorado;
		this.cat = cat;
		this.regded = regded;
		this.horcla = horcla;
		this.horact = horact;
		this.tothor = tothor;
		this.docinv = docinv;
		this.dina = dina;
		this.peraca = peraca;
		this.obs = obs;
	}



	public Docente(String nombre, String apepat, String apemat, String pais, long numdoc, String fecini, String ley,
			String maygra, String menmay, String uni, String paiuni, String pregrado, String maestria, String doctorado,
			String cat, String regded, int horcla, int horact, int tothor, String docinv, String dina, String peraca,
			String obs) {
		super();
		this.nombre = nombre;
		this.apepat = apepat;
		this.apemat = apemat;
		this.pais = pais;
		this.numdoc = numdoc;
		this.fecini = fecini;
		this.ley = ley;
		this.maygra = maygra;
		this.menmay = menmay;
		this.uni = uni;
		this.paiuni = paiuni;
		this.pregrado = pregrado;
		this.maestria = maestria;
		this.doctorado = doctorado;
		this.cat = cat;
		this.regded = regded;
		this.horcla = horcla;
		this.horact = horact;
		this.tothor = tothor;
		this.docinv = docinv;
		this.dina = dina;
		this.peraca = peraca;
		this.obs = obs;
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

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public long getNumdoc() {
		return numdoc;
	}

	public void setNumdoc(long numdoc) {
		this.numdoc = numdoc;
	}

	public String getFecini() {
		return fecini;
	}

	public void setFecini(String fecini) {
		this.fecini = fecini;
	}

	public String getLey() {
		return ley;
	}

	public void setLey(String ley) {
		this.ley = ley;
	}

	public String getMaygra() {
		return maygra;
	}

	public void setMaygra(String maygra) {
		this.maygra = maygra;
	}

	public String getMenmay() {
		return menmay;
	}

	public void setMenmay(String menmay) {
		this.menmay = menmay;
	}

	public String getUni() {
		return uni;
	}

	public void setUni(String uni) {
		this.uni = uni;
	}

	public String getPaiuni() {
		return paiuni;
	}

	public void setPaiuni(String paiuni) {
		this.paiuni = paiuni;
	}

	public String getPregrado() {
		return pregrado;
	}

	public void setPregrado(String pregrado) {
		this.pregrado = pregrado;
	}

	public String getMaestria() {
		return maestria;
	}

	public void setMaestria(String maestria) {
		this.maestria = maestria;
	}

	public String getDoctorado() {
		return doctorado;
	}

	public void setDoctorado(String doctorado) {
		this.doctorado = doctorado;
	}

	public String getCat() {
		return cat;
	}

	public void setCat(String cat) {
		this.cat = cat;
	}

	public String getRegded() {
		return regded;
	}

	public void setRegded(String regded) {
		this.regded = regded;
	}

	public int getHorcla() {
		return horcla;
	}

	public void setHorcla(int horcla) {
		this.horcla = horcla;
	}

	public int getHoract() {
		return horact;
	}

	public void setHoract(int horact) {
		this.horact = horact;
	}

	public int getTothor() {
		return tothor;
	}

	public void setTothor(int tothor) {
		this.tothor = tothor;
	}

	public String getDocinv() {
		return docinv;
	}

	public void setDocinv(String docinv) {
		this.docinv = docinv;
	}

	public String getDina() {
		return dina;
	}

	public void setDina(String dina) {
		this.dina = dina;
	}

	public String getPeraca() {
		return peraca;
	}

	public void setPeraca(String peraca) {
		this.peraca = peraca;
	}

	public String getObs() {
		return obs;
	}

	public void setObs(String obs) {
		this.obs = obs;
	}
	
	
	
}
