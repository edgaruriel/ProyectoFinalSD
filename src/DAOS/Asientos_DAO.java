/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOS;

import Modelo.Asiento;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class Asientos_DAO extends AbstractDAO<Asiento> {

    @Override
    public boolean agregar(Asiento entidad) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String condicion) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean modificar(Asiento entidad) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Asiento> consultarTodos(String condicion) throws SQLException {
       Connection conexion;
       ArrayList asientos = new ArrayList<Asiento>();
        conexion = (Connection) AbstractDAO.getConexion();
        java.sql.Statement st = conexion.createStatement(); 
        ResultSet rs = st.executeQuery("SELECT * FROM asientos AS a JOIN estados AS e ON a.estados_id = e.id ORDER BY a.id ASC");
        while (rs.next()) {
            Asiento asiento = new Asiento();
            asiento.setId(rs.getInt("id"));
            asiento.setFila(rs.getInt("Filas_id"));
            asiento.setEstado(rs.getString("nombre"));
            asiento.setColor(rs.getString("color"));
            System.out.println("id: " + asiento.getId());
            asientos.add(asiento);
        }
        return asientos;
    }

    @Override
    public Asiento consultar(String condicion) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
