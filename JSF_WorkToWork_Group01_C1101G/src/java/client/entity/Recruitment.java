package client.entity;
// Generated May 14, 2013 3:06:40 PM by Hibernate Tools 3.2.1.GA


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Recruitment generated by hbm2java
 */
public class Recruitment  implements java.io.Serializable {


     private int id;
     private LevelJob levelJob;
     private Customer customer;
     private String title;
     private String expritedDate;
     private String contactPerson;
     private String email;
     private Integer number;
     private Boolean typeOfJob;
     private String jobDescription;
     private String benefits;
     private String jobRequiment;
     private Set<RecruitmentLocation> recruitmentLocations = new HashSet<RecruitmentLocation>(0);
     private Set<RecruitmentCv> recruitmentCvs = new HashSet<RecruitmentCv>(0);
     private Set<RecruitmentToWorker> recruitmentToWorkers = new HashSet<RecruitmentToWorker>(0);
     private Set<RecruitmentCategory> recruitmentCategories = new HashSet<RecruitmentCategory>(0);

    public Recruitment() {
    }

	
    public Recruitment(int id) {
        this.id = id;
    }
    public Recruitment(int id, LevelJob levelJob, Customer customer, String title, String expritedDate, String contactPerson, String email, Integer number, Boolean typeOfJob, String jobDescription, String benefits, String jobRequiment, Set<RecruitmentLocation> recruitmentLocations, Set<RecruitmentCv> recruitmentCvs, Set<RecruitmentToWorker> recruitmentToWorkers, Set<RecruitmentCategory> recruitmentCategories) {
       this.id = id;
       this.levelJob = levelJob;
       this.customer = customer;
       this.title = title;
       this.expritedDate = expritedDate;
       this.contactPerson = contactPerson;
       this.email = email;
       this.number = number;
       this.typeOfJob = typeOfJob;
       this.jobDescription = jobDescription;
       this.benefits = benefits;
       this.jobRequiment = jobRequiment;
       this.recruitmentLocations = recruitmentLocations;
       this.recruitmentCvs = recruitmentCvs;
       this.recruitmentToWorkers = recruitmentToWorkers;
       this.recruitmentCategories = recruitmentCategories;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public LevelJob getLevelJob() {
        return this.levelJob;
    }
    
    public void setLevelJob(LevelJob levelJob) {
        this.levelJob = levelJob;
    }
    public Customer getCustomer() {
        return this.customer;
    }
    
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    public String getExpritedDate() {
        return this.expritedDate;
    }
    
    public void setExpritedDate(String expritedDate) {
        this.expritedDate = expritedDate;
    }
    public String getContactPerson() {
        return this.contactPerson;
    }
    
    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Integer getNumber() {
        return this.number;
    }
    
    public void setNumber(Integer number) {
        this.number = number;
    }
    public Boolean getTypeOfJob() {
        return this.typeOfJob;
    }
    
    public void setTypeOfJob(Boolean typeOfJob) {
        this.typeOfJob = typeOfJob;
    }
    public String getJobDescription() {
        return this.jobDescription;
    }
    
    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }
    public String getBenefits() {
        return this.benefits;
    }
    
    public void setBenefits(String benefits) {
        this.benefits = benefits;
    }
    public String getJobRequiment() {
        return this.jobRequiment;
    }
    
    public void setJobRequiment(String jobRequiment) {
        this.jobRequiment = jobRequiment;
    }
    public Set<RecruitmentLocation> getRecruitmentLocations() {
        return this.recruitmentLocations;
    }
    
    public void setRecruitmentLocations(Set<RecruitmentLocation> recruitmentLocations) {
        this.recruitmentLocations = recruitmentLocations;
    }
    public Set<RecruitmentCv> getRecruitmentCvs() {
        return this.recruitmentCvs;
    }
    
    public void setRecruitmentCvs(Set<RecruitmentCv> recruitmentCvs) {
        this.recruitmentCvs = recruitmentCvs;
    }
    public Set<RecruitmentToWorker> getRecruitmentToWorkers() {
        return this.recruitmentToWorkers;
    }
    
    public void setRecruitmentToWorkers(Set<RecruitmentToWorker> recruitmentToWorkers) {
        this.recruitmentToWorkers = recruitmentToWorkers;
    }
    public Set<RecruitmentCategory> getRecruitmentCategories() {
        return this.recruitmentCategories;
    }
    
    public void setRecruitmentCategories(Set<RecruitmentCategory> recruitmentCategories) {
        this.recruitmentCategories = recruitmentCategories;
    }




}


