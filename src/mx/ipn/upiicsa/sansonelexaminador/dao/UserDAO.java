package mx.ipn.upiicsa.sansonelexaminador.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class UserDAO extends SansonElExaminadorMySqlDAO{

	/**
	 * 
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public UserDAO() throws ClassNotFoundException, SQLException {
		super();
		System.out.println("UsuarioDAO()");
	}
	/**
	 * 
	 * @param idUsuario
	 * @param password
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public UserValueObject autenticar(String idUsuario, String password) 
	throws ClassNotFoundException, SQLException
	{
		Statement stmt = null;
		ResultSet rs =null;
		Connection connection = null;
		UserValueObject usuario = null;
		try {
			System.out.println("UsuarioDAO.autenticar()");
			
			String sql = "select * from usuarios where id_usuario ='" + idUsuario + "' and password='" +  
	                                              password + "'";
			
			System.out.println("UsuarioDAO.autenticar() - sql [ " + sql + "]");
			
			stmt = createStatement();
			
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				usuario = new UserValueObject();
				
				usuario.setId(rs.getString("id_usuario"));
				usuario.setFirstName(rs.getString("firstname"));
				usuario.setLastName(rs.getString("lastname"));
				usuario.setRole(rs.getString("role"));
				usuario.setStatus(rs.getString("estatus"));
				usuario.setActivationKey(rs.getString("clave_activacion"));
				usuario.setTemporaryPassword(rs.getBoolean("password_es_temporal"));
				usuario.setPasswordMaxAge(rs.getInt("password_es_temporal"));
				usuario.setPasswordLastUpdate(rs.getDate("ultima_actualizacion_password"));
			}

			return usuario;
		}
		finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection();
		}
	}
	/**
	 * 
	 * @param idUsuario
	 * @param currentPassword
	 * @param newPassword
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public int updatePassword(String idUsuario, String currentPassword, String newPassword) 
	throws ClassNotFoundException, SQLException
	{
		Statement stmt = null;
		try {
			System.out.println("UsuarioDAO.autenticar()");
			
			String sql = "update usuarios set password = \'" + newPassword+ "\'where id_usuario ='" + 
					idUsuario + "' and password='" + currentPassword + "'";
			
			System.out.println("UsuarioDAO.autenticar() - sql [ " + sql + "]");
			
			stmt = createStatement();
			
			return stmt.executeUpdate(sql);
		}
		finally {
			closeStatement(stmt);
			closeConnection();
		}
	}

}
