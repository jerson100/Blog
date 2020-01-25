package pe.com.jersonramirez.interfaces;

import java.sql.Connection;

/**
 *
 * @author Jerson
 */
public interface IConnection {
    
    Connection getConnection();
    
    void CloseConnection();
    
    String USER = "root";
    String PASS = "";
    String HOST = "jdbc:mysql://localhost/proyectoweb01.1";
    
}
