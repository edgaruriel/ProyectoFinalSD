/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAOS;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author user
 */
public abstract class AbstractDAO<T> {
    private static String servidor = "jdbc:mysql://localhost/reservarasientos";
	private static String usuarioDB="root";
	private static String passwordDB="";
	
	public static Connection getConexion(){
		Connection conexion=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conexion= (Connection) DriverManager.getConnection(servidor,usuarioDB,passwordDB);
		} 
		catch(ClassNotFoundException ex)
        {
        	System.out.println("Error1 en la Conexión con la BD "+ ex.getMessage() +", " + ex.toString() +", " + ex.getException() );
          //  JOptionPane.showMessageDialog(null, ex, "Error1 en la Conexión con la BD "+ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion=null;
        } 
         catch(SQLException ex)
        {
        	System.out.println("Error2 en la Conexión con la BD"+ex.getMessage());
            //JOptionPane.showMessageDialog(null, ex, "Error2 en la Conexión con la BD "+ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion=null;
        }
        catch(Exception ex)
        {
        	System.out.println("Error 3" +ex.getMessage());
            //JOptionPane.showMessageDialog(null, ex, "Error3 en la Conexión con la BD "+ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion=null;
        }
		return conexion;
	}
	
    public void cerrarConexion(Connection conexion){
        try {
            if ( conexion != null )
                if ( !conexion.isClosed() )    
                	conexion.close();
        } catch (SQLException e) { e.printStackTrace(); }
    }
    
    public abstract boolean agregar(T entidad) throws SQLException;
    public abstract boolean eliminar(String condicion) throws SQLException;
    public abstract boolean modificar(T entidad) throws SQLException;
    public abstract ArrayList<T> consultarTodos(String condicion) throws SQLException;
    public abstract T consultar(String condicion) throws SQLException;
}
