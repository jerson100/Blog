package pe.com.jersonramirez.connections;

import pe.com.jersonramirez.enumerates.EConnection;
import pe.com.jersonramirez.interfaces.IConnection;

/**
 *
 * @author Jerson
 */

/*
    Patrón factory
*/

public class ManagerConnection {
    
    public static IConnection getConnection(EConnection e){
        switch(e){
            case MYSQL:
                return ConnectionMysql.getInstance();
            case ORACLE:
                return ConnectionOracle.getInstance();
            default :
                return null;
        }
    }
    
}
