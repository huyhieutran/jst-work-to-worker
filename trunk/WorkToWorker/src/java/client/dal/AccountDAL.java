/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package client.dal;

import client.entity.Account;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author mrlucky
 */
public class AccountDAL {
    SessionFactory sf;
    Session ss;

    public AccountDAL() {
    }
    
    public boolean insertAccount(Account acc)
    {
        sf = HibernateUtil.getSessionFactory();
        ss = sf.openSession();
        ss.save(acc);
        return true;
    }
}
