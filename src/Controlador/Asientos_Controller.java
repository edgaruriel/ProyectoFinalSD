/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import DAOS.Asientos_DAO;
import Modelo.Asiento;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author user
 */
public class Asientos_Controller {
    private Asientos_DAO asientosDAO = new Asientos_DAO();
    
    public ArrayList<Asiento> obtenerAsientos(){
        ArrayList asientos = new ArrayList<Asiento>();
        try {
            asientos = asientosDAO.consultarTodos("");
        } catch (SQLException ex) {
            Logger.getLogger(Asientos_Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return asientos;
    }
}
