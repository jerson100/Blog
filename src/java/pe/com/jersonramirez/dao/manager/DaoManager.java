package pe.com.jersonramirez.dao.manager;

import pe.com.jersonramirez.enumerates.EConnection;
import pe.com.jersonramirez.enumerates.EDao;
import pe.com.jersonramirez.interfaces.ICrud;

/**
 *
 * @author Jerson
 */
public class DaoManager {
    
    public static ICrud getDaoManager(EDao e){
        
        //que coneccion queremos usar
        
        EConnection type = EConnection.MYSQL;
        
        switch(type){
            case MYSQL:
                switch(e){
                    case UserDao:
                        return new pe.com.jersonramirez.dao.mysql.UserDao();
                }
            case ORACLE:
                switch(e){
                    case UserDao:
                        return new pe.com.jersonramirez.dao.oracle.UserDao();
                }
        }
        
        return null;
        
    } 
    
}
