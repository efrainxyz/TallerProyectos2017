package bean;

public class Curso {
	private String idcurso;
	private String nombre;
	private int h_teo;
	private int h_lab;
	private int h_pract;
	private int creditos;
	private int estado_hab_inhab;
	private String req01;
	private String req02;
	private String req03;
	private String cooreq;
	private String cred_req;
	private String nombreProp;
	private String coldLab;
	private String usu_crea_reg;
	private String fec_crea_reg;
	private String ult_usu_mod_reg;
	private String fec_ult_mod_reg;
	
	public Curso() {
		super();
	}
	public Curso(String idcurso, String nombre, int h_teo, int h_lab, int h_pract, int creditos, int estado_hab_inhab,
			String req01, String req02, String req03, String cooreq, String cred_req, String nombreProp, String coldLab,
			String usu_crea_reg, String fec_crea_reg, String ult_usu_mod_reg, String fec_ult_mod_reg) {
		super();
		this.idcurso = idcurso;
		this.nombre = nombre;
		this.h_teo = h_teo;
		this.h_lab = h_lab;
		this.h_pract = h_pract;
		this.creditos = creditos;
		this.estado_hab_inhab = estado_hab_inhab;
		this.req01 = req01;
		this.req02 = req02;
		this.req03 = req03;
		this.cooreq = cooreq;
		this.cred_req = cred_req;
		this.nombreProp = nombreProp;
		this.coldLab = coldLab;
		this.usu_crea_reg = usu_crea_reg;
		this.fec_crea_reg = fec_crea_reg;
		this.ult_usu_mod_reg = ult_usu_mod_reg;
		this.fec_ult_mod_reg = fec_ult_mod_reg;
	}
	
	public String getIdcurso() {
		return idcurso;
	}
	public void setIdcurso(String idcurso) {
		this.idcurso = idcurso;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getH_teo() {
		return h_teo;
	}
	public void setH_teo(int h_teo) {
		this.h_teo = h_teo;
	}
	public int getH_lab() {
		return h_lab;
	}
	public void setH_lab(int h_lab) {
		this.h_lab = h_lab;
	}
	public int getH_pract() {
		return h_pract;
	}
	public void setH_pract(int h_pract) {
		this.h_pract = h_pract;
	}
	public int getCreditos() {
		return creditos;
	}
	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}
	public int getEstado_hab_inhab() {
		return estado_hab_inhab;
	}
	public void setEstado_hab_inhab(int estado_hab_inhab) {
		this.estado_hab_inhab = estado_hab_inhab;
	}
	public String getReq01() {
		return req01;
	}
	public void setReq01(String req01) {
		this.req01 = req01;
	}
	public String getReq02() {
		return req02;
	}
	public void setReq02(String req02) {
		this.req02 = req02;
	}
	public String getReq03() {
		return req03;
	}
	public void setReq03(String req03) {
		this.req03 = req03;
	}
	public String getCooreq() {
		return cooreq;
	}
	public void setCooreq(String cooreq) {
		this.cooreq = cooreq;
	}
	public String getCred_req() {
		return cred_req;
	}
	public void setCred_req(String cred_req) {
		this.cred_req = cred_req;
	}
	public String getNombreProp() {
		return nombreProp;
	}
	public void setNombreProp(String nombreProp) {
		this.nombreProp = nombreProp;
	}
	public String getColdLab() {
		return coldLab;
	}
	public void setColdLab(String coldLab) {
		this.coldLab = coldLab;
	}
	public String getUsu_crea_reg() {
		return usu_crea_reg;
	}
	public void setUsu_crea_reg(String usu_crea_reg) {
		this.usu_crea_reg = usu_crea_reg;
	}
	public String getFec_crea_reg() {
		return fec_crea_reg;
	}
	public void setFec_crea_reg(String fec_crea_reg) {
		this.fec_crea_reg = fec_crea_reg;
	}
	public String getUlt_usu_mod_reg() {
		return ult_usu_mod_reg;
	}
	public void setUlt_usu_mod_reg(String ult_usu_mod_reg) {
		this.ult_usu_mod_reg = ult_usu_mod_reg;
	}
	public String getFec_ult_mod_reg() {
		return fec_ult_mod_reg;
	}
	public void setFec_ult_mod_reg(String fec_ult_mod_reg) {
		this.fec_ult_mod_reg = fec_ult_mod_reg;
	}
	
	
}
