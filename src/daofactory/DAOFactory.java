package daofactory;
import dao.interfaces.*;

public abstract class DAOFactory {

	public static final int MYSQL =1;
	public static final int SQLSERVER =2;
	public static final int ORACLE =3;
		
	public static DAOFactory getDAOFactory(int factory){
		switch(factory){
		case MYSQL: return new MySQLDaoFactory();
		case SQLSERVER:
			//return new SQLSERVERDAOFactory();
		case ORACLE:
			//return new ORACLEDAOFactory();
		default:
			return null;
		}
	}
	
	public abstract I_Curso getCurso();
	
}