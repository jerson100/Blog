package pe.com.jersonramirez.connections;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import pe.com.jersonramirez.interfaces.IConnection;

/**
 *
 * @author Jerson
 */
/*
    Patrón singleton

*/

public class ConnectionMysql implements IConnection{
    
    private static ConnectionMysql instance;
    private Connection connection;
    
    private ConnectionMysql() throws Exception{
        
        Class.forName("com.mysql.jdbc.Driver");
        
        connection = DriverManager.getConnection(HOST,USER,PASS);
        
    }

    @Override
    public Connection getConnection() {
        return this.connection;
    }

    public static IConnection getInstance() {
        try{
            if(ConnectionMysql.instance == null){
                ConnectionMysql.instance = new ConnectionMysql();
            }
        }catch(Exception e){
            System.out.println("No se pudo establecer la conexión a la bd");
        }
        return ConnectionMysql.instance;
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
