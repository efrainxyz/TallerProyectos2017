package bean;

public class PlancurricularBean {

	public String getFacultad() {
		return facultad;
	}
	public void setFacultad(String facultad) {
		this.facultad = facultad;
	}
	private String idPlan;
	private String idEscuela;
	private String descripcion ;
	private String codSemes;
	private String facultad;
	private int estado;
	private SemenstreBean accesoSemestre;
	private CursoBean accesoCurso;
	private String ciclo;
	public SemenstreBean getAccesoSemestre() {
		return accesoSemestre;
	}
	public void setAccesoSemestre(SemenstreBean accesoSemestre) {
		this.accesoSemestre = accesoSemestre;
	}
	public String getIdPlan() {
		return idPlan;
	}
	public void setIdPlan(String idPlan) {
		this.idPlan = idPlan;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getCodSemes() {
		return codSemes;
	}
	public void setCodSemes(String codSemes) {
		this.codSemes = codSemes;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	public CursoBean getAccesoCurso() {
		return accesoCurso;
	}
	public void setAccesoCurso(CursoBean accesoCurso) {
		this.accesoCurso = accesoCurso;
	}
	public String getIdEscuela() {
		return idEscuela;
	}
	public void setIdEscuela(String idEscuela) {
		this.idEscuela = idEscuela;
	}
	public String getCiclo() {
		return ciclo;
	}
	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}
}
