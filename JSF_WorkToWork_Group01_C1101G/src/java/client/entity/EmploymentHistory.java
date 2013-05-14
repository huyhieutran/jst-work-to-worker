package client.entity;
// Generated May 14, 2013 3:06:40 PM by Hibernate Tools 3.2.1.GA


import java.io.Serializable;

/**
 * EmploymentHistory generated by hbm2java
 */
public class EmploymentHistory  implements java.io.Serializable {


     private int id;
     private Cv cv;
     private String category;
     private String jobLevel;
     private String company;
     private String fromDate;
     private String toDate;
     private String mainDuties;
     private String resonLeaving;

    public EmploymentHistory() {
    }

	
    public EmploymentHistory(int id) {
        this.id = id;
    }
    public EmploymentHistory(int id, Cv cv, String category, String jobLevel, String company, String fromDate, String toDate, String mainDuties, String resonLeaving) {
       this.id = id;
       this.cv = cv;
       this.category = category;
       this.jobLevel = jobLevel;
       this.company = company;
       this.fromDate = fromDate;
       this.toDate = toDate;
       this.mainDuties = mainDuties;
       this.resonLeaving = resonLeaving;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Cv getCv() {
        return this.cv;
    }
    
    public void setCv(Cv cv) {
        this.cv = cv;
    }
    public String getCategory() {
        return this.category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    public String getJobLevel() {
        return this.jobLevel;
    }
    
    public void setJobLevel(String jobLevel) {
        this.jobLevel = jobLevel;
    }
    public String getCompany() {
        return this.company;
    }
    
    public void setCompany(String company) {
        this.company = company;
    }
    public String getFromDate() {
        return this.fromDate;
    }
    
    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }
    public String getToDate() {
        return this.toDate;
    }
    
    public void setToDate(String toDate) {
        this.toDate = toDate;
    }
    public String getMainDuties() {
        return this.mainDuties;
    }
    
    public void setMainDuties(String mainDuties) {
        this.mainDuties = mainDuties;
    }
    public String getResonLeaving() {
        return this.resonLeaving;
    }
    
    public void setResonLeaving(String resonLeaving) {
        this.resonLeaving = resonLeaving;
    }




}


