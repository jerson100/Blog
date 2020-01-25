package pe.com.jersonramirez.interfaces;

import java.util.List;
import pe.com.jersonramirez.exceptions.NotCreated;
import pe.com.jersonramirez.exceptions.NotDeleted;
import pe.com.jersonramirez.exceptions.NotFound;
import pe.com.jersonramirez.exceptions.NotUpdated;

/**
 *
 * @author Jerson
 */
public interface ICrud<T> {
    void create(T e) throws NotCreated;
    T read(int id) throws NotFound;
    void update(T e) throws NotUpdated;
    void delete(int id) throws NotDeleted;
    List<T> all() throws NotFound;
}
