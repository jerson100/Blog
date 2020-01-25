/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.jersonramirez.connections;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import pe.com.jersonramirez.interfaces.IConnection;

/**
 *
 * @author Jerson
 */
public class ConnectionOracle implements IConnection{
    
    private static ConnectionOracle instance;
    private Connection connection;
    
    private ConnectionOracle() throws Exception{
        
        Class.forName("driveroracle :v");
        
        connection = DriverManager.getConnection("","","");
        
    }

    @Override
    public Connection getConnection() {
        return this.connection;
    }

   
    public static IConnection getInstance() {
        try{
            if(instance == null){
                instance = new ConnectionOracle();
            }
        }catch(Exception e){
            System.out.println("No se pudo establecer la conexión a la bd oracle");
        }
        return instance;
    }

    @Override
    public void CloseConnection() {
        try {
            if(!this.connection.isClosed()){
                this.connection.close();
                this.connection = null;
                this.instance = null;
            }
        } catch (SQLException ex) {}
    }
    
}
