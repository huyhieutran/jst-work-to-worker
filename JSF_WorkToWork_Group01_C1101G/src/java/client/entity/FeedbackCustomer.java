package client.entity;
// Generated May 14, 2013 3:06:40 PM by Hibernate Tools 3.2.1.GA


import java.io.Serializable;

/**
 * FeedbackCustomer generated by hbm2java
 */
public class FeedbackCustomer  implements java.io.Serializable {


     private int id;
     private Customer customer;
     private String infoFeedback;

    public FeedbackCustomer() {
    }

	
    public FeedbackCustomer(int id) {
        this.id = id;
    }
    public FeedbackCustomer(int id, Customer customer, String infoFeedback) {
       this.id = id;
       this.customer = customer;
       this.infoFeedback = infoFeedback;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Customer getCustomer() {
        return this.customer;
    }
    
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    public String getInfoFeedback() {
        return this.infoFeedback;
    }
    
    public void setInfoFeedback(String infoFeedback) {
        this.infoFeedback = infoFeedback;
    }




}


