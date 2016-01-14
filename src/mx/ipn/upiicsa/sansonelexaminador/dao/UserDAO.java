package mx.ipn.upiicsa.sansonelexaminador.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

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
		PreparedStatement stmt = null;
		ResultSet rs =null;
		Connection connection = null;
		UserValueObject usuario = null;
		try {
			System.out.println("UsuarioDAO.autenticar()");
			connection=getConnection();
			//String sql1 = "select * from usuarios where id_usuario ='" + idUsuario + "' and password='" +
	          //                                    password + "'";
	        String sql = "select * from usuarios where id_usuario = ? and password = ? ";
			stmt=connection.prepareStatement(sql);
			stmt.setString(1, idUsuario);
			stmt.setString(2, password);
			System.out.println("UsuarioDAO.autenticar() - sql [ " + sql + "]");


			rs = stmt.executeQuery();


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
		PreparedStatement stmt = null;
		Connection connection = null;
		try {
			System.out.println("UsuarioDAO.autenticar()");
			connection=getConnection();
			//String sql = "update usuarios set password = \'" + newPassword+ "\'where id_usuario ='" +
				//	idUsuario + "' and password='" + currentPassword + "'";
			String sql = "update usuarios set password = ? where id_usuario =? and password=?";
			stmt=connection.prepareStatement(sql);
			stmt.setString(1, newPassword);
			stmt.setString(2, idUsuario);
			stmt.setString(3, currentPassword);
			System.out.println("UsuarioDAO.autenticar() - sql [ " + sql + "]");

			return stmt.executeUpdate();
		}
		finally {
			closeStatement(stmt);
			closeConnection();
		}
	}

	public int newUser(String nombre, String apellido,String idUsuario,String role ,String password,String res_sec1 ,String res_sec2, String res_sec3)
		throws ClassNotFoundException, SQLException
		{
			PreparedStatement stmt = null;
		Connection connection = null;
		int vigencia = 5;
		try{
			System.out.println("UsuarioDAO.newUser()");
			connection=getConnection();
			//String sql = "insert into usuarios (id_usuario,password,firstname,lastname,role,estatus,clave_activacion,password_es_temporal,
			//vigencia_password,ultima_actualizacion_password,res_sec1,res_sec2,res_sec3)values"+
			//		 "('"+idUsuario+"','"+password+"','"+nombre+"','"+apellido+"','"+role+"','ACTIVO',null,false,'"+vigencia+"',curdate(),'
			//"+res_sec1+"','"+res_sec2+ "','"+res_sec3+"')";
			String sql = "insert into usuarios (id_usuario,password,firstname,lastname,role,estatus,clave_activacion,password_es_temporal,vigencia_password,ultima_actualizacion_password,res_sec1,res_sec2,res_sec3)values"+
					 "(?,?,?,?,?,?,?,?,?,curdate(),?,?,?)";
			stmt=connection.prepareStatement(sql);
			stmt.setString(1, idUsuario);
			stmt.setString(2, password);
			stmt.setString(3, nombre);
			stmt.setString(4, apellido);
			stmt.setString(5, role);
			stmt.setString(6, "ACTIVO");
			stmt.setString(7, "null");
			stmt.setInt(8, 0);
			stmt.setInt(9, vigencia);
			stmt.setString(10, res_sec1);
			stmt.setString(11, res_sec2);
			stmt.setString(12, res_sec3);
			System.out.println("UsuarioDAO.newUser() - sql [ " + sql + "]");
		return stmt.executeUpdate();
		}finally{
			closeStatement(stmt);
			closeConnection();
		}


	}
	public int Foro(String tema_pregunta, String pregunta_foro) throws ClassNotFoundException,SQLException{
		PreparedStatement stmt = null;
	  Connection connection = null;
	try{
		System.out.println("UsuarioDAO.foro()");
		connection=getConnection();

			String sql = "insert into Foro (Tema_Pregunta, Pregunta_Foro)values (?,?)";
			stmt=connection.prepareStatement(sql);
			stmt.setString(1, tema_pregunta);
			stmt.setString(2, pregunta_foro);
			System.out.println("UsuarioDAO.Foro() - sql [ " + sql + "]");
		return stmt.executeUpdate();
		}finally{
			closeStatement(stmt);
			closeConnection();
		}


	}


	public int registrarBanco(String nombreBanco,String nombreCat,int nameObl,int nameOpc,String examen,String idUsuario) throws ClassNotFoundException,SQLException{
		PreparedStatement stmt = null;
	  Connection connection = null;
	try{
		System.out.println("UsuarioDAO.registrarBanco()");
		connection=getConnection();
			String sql = "insert into BancosExamenes (banco,email,categoria,noObl,noOpc,examen)values (?,?,?,?,?,?)";
			stmt=connection.prepareStatement(sql);
			stmt.setString(1, nombreBanco);
			stmt.setString(2, idUsuario);
			stmt.setString(3, nombreCat);
			stmt.setInt(4, nameObl);
			stmt.setInt(5, nameOpc);
			stmt.setString(6, examen);
			System.out.println("UsuarioDAO.registrarBanco() - sql [ " + sql + "]");
		return stmt.executeUpdate();
		}finally{
			closeStatement(stmt);
			closeConnection();
		}


	}

}
