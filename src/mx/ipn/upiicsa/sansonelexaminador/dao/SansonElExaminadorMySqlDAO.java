package mx.ipn.upiicsa.sansonelexaminador.dao;

import java.sql.SQLException;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class SansonElExaminadorMySqlDAO extends DataAccessObject {
	

	public SansonElExaminadorMySqlDAO() throws ClassNotFoundException, SQLException {
		super();
	}

	protected void init() {
		driver = "com.mysql.jdbc.Driver";
		url = "jdbc:mysql://localhost/sanson_el_examinador_db";
		user = "root";
		password = "root";
	}
}
