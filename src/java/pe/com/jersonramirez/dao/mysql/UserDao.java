/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.jersonramirez.dao.mysql;

import java.util.List;
import pe.com.jersonramirez.enumerates.EConnection;
import pe.com.jersonramirez.exceptions.NotCreated;
import pe.com.jersonramirez.exceptions.NotDeleted;
import pe.com.jersonramirez.exceptions.NotFound;
import pe.com.jersonramirez.exceptions.NotUpdated;
import pe.com.jersonramirez.interfaces.IUser;
import pe.com.jersonramirez.models.User;

/**
 *
 * @author Jerson
 */
public class UserDao implements IUser{
    
    public UserDao(){
       
    }

    @Override
    public void create(User e) throws NotCreated {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User read(int id) throws NotFound {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(User e) throws NotUpdated {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) throws NotDeleted {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<User> all() throws NotFound {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
