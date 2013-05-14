/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package client.dal;

import client.entity.Worker;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author mrlucky
 */
public class WorkerDAL {
    SessionFactory sf;
    Session ss;

    public WorkerDAL() {
        
    }
    
    public boolean insertWorker(Worker w)
    {
        sf = HibernateUtil.getSessionFactory();
        ss = sf.openSession();
        ss.save(w);
        return true;
    }
}
