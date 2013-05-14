/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package client.bean;

import client.entity.Account;
import client.entity.Worker;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author mrlucky
 */
@ManagedBean
@SessionScoped
public class WorkerSignUp {
    private Account acc;
    private Worker worker;
    private String confirmPass;

    public String getConfirmPass() {
        return confirmPass;
    }

    public void setConfirmPass(String confirmPass) {
        this.confirmPass = confirmPass;
    }

    public Account getAcc() {
        return acc;
    }

    public void setAcc(Account acc) {
        this.acc = acc;
    }

    public Worker getWorker() {
        return worker;
    }

    public void setWorker(Worker worker) {
        this.worker = worker;
    }
    /**
     * Creates a new instance of WorkerSignUp
     */
    
    public WorkerSignUp() {
        
    }
}
