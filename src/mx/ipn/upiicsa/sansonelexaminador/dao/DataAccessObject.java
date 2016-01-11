package mx.ipn.upiicsa.sansonelexaminador.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public abstract class DataAccessObject {

    protected String driver = "com.mysql.jdbc.Driver";
	protected String url = "jdbc:mysql://localhost/fortuna";
	protected String user = "root";
	protected String password = "root";
	
	private Connection connection = null;
	
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	public DataAccessObject() throws ClassNotFoundException, SQLException
	{
		System.out.println("DataAccessObject()");
		init();
		openConnection();
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	protected abstract void init();
	
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	public static void closeResultSet(ResultSet rs) throws SQLException
	{
		if(rs != null && !rs.isClosed())
		{
			rs.close();
		}
		System.out.println("DataAccessObject.closeResultSet() - Database resultSet has been closed");
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	public Statement createStatement() throws SQLException
	{
		if(connection != null && !connection.isClosed())
		{
			return connection.createStatement();
		}
		throw new SQLException("No connection has been established.");
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	public Statement prepareStatement(String sql) throws SQLException
	{
		if(connection != null && !connection.isClosed())
		{
			return connection.prepareStatement(sql);
		}
		throw new SQLException("No connection has been established.");
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	public static void closeStatement(Statement stmt) throws SQLException
	{
		if(stmt != null && !stmt.isClosed())
		{
			stmt.close();
		}
		System.out.println("DataAccessObject.closeStatement() - Database statement has been closed");
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	public void closeConnection() throws SQLException
	{
		if(connection != null && !connection.isClosed())
		{
			connection.close();
		}		
		System.out.println("DataAccessObject.closeConnection() - Database connection has been closed");
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	private void openConnection() throws SQLException, ClassNotFoundException
	{
		// System.out.println("DataAccessObject.openConnection()");
		
		//System.out.println("DataAccessObject.openConnection() - " + connection + ":" + connection==null?false:connection.isClosed());
		
		System.out.println("DataAccessObject.openConnection() - " + connection );
		
		if(connection == null || connection.isClosed())
		{
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, password);
			System.out.println("DataAccessObject.openConnection() - Database connection has been opened");
		}
		else {
			System.out.println("DataAccessObject.openConnection() - Database connection was already opened");
		}
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
	public Connection getConnection() throws SQLException, ClassNotFoundException
	{
		System.out.println("DataAccessObject.getConnection()");
		if(connection == null || connection.isClosed())
		{
			openConnection();
		}
		return connection;
	}
	/* ********************************************************************* *
	 *                                                                       *
	 * ********************************************************************* */
}

