package client.entity;
// Generated May 14, 2013 3:06:40 PM by Hibernate Tools 3.2.1.GA


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Cv generated by hbm2java
 */
public class Cv  implements java.io.Serializable {


     private int id;
     private Worker worker;
     private LevelJob levelJob;
     private String title;
     private String identityCardNumber;
     private String dateIssueIdcard;
     private String placeIssueIdcard;
     private String achievement;
     private String province;
     private String country;
     private Double moneyIncome;
     private Boolean typeJob;
     private Boolean active;
     private Set<CvLocation> cvLocations = new HashSet<CvLocation>(0);
     private Set<EmploymentHistory> employmentHistories = new HashSet<EmploymentHistory>(0);
     private Set<RecruitmentCv> recruitmentCvs = new HashSet<RecruitmentCv>(0);
     private Set<Education> educations = new HashSet<Education>(0);
     private Set<CvCategory> cvCategories = new HashSet<CvCategory>(0);

    public Cv() {
    }

	
    public Cv(int id) {
        this.id = id;
    }
    public Cv(int id, Worker worker, LevelJob levelJob, String title, String identityCardNumber, String dateIssueIdcard, String placeIssueIdcard, String achievement, String province, String country, Double moneyIncome, Boolean typeJob, Boolean active, Set<CvLocation> cvLocations, Set<EmploymentHistory> employmentHistories, Set<RecruitmentCv> recruitmentCvs, Set<Education> educations, Set<CvCategory> cvCategories) {
       this.id = id;
       this.worker = worker;
       this.levelJob = levelJob;
       this.title = title;
       this.identityCardNumber = identityCardNumber;
       this.dateIssueIdcard = dateIssueIdcard;
       this.placeIssueIdcard = placeIssueIdcard;
       this.achievement = achievement;
       this.province = province;
       this.country = country;
       this.moneyIncome = moneyIncome;
       this.typeJob = typeJob;
       this.active = active;
       this.cvLocations = cvLocations;
       this.employmentHistories = employmentHistories;
       this.recruitmentCvs = recruitmentCvs;
       this.educations = educations;
       this.cvCategories = cvCategories;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Worker getWorker() {
        return this.worker;
    }
    
    public void setWorker(Worker worker) {
        this.worker = worker;
    }
    public LevelJob getLevelJob() {
        return this.levelJob;
    }
    
    public void setLevelJob(LevelJob levelJob) {
        this.levelJob = levelJob;
    }
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    public String getIdentityCardNumber() {
        return this.identityCardNumber;
    }
    
    public void setIdentityCardNumber(String identityCardNumber) {
        this.identityCardNumber = identityCardNumber;
    }
    public String getDateIssueIdcard() {
        return this.dateIssueIdcard;
    }
    
    public void setDateIssueIdcard(String dateIssueIdcard) {
        this.dateIssueIdcard = dateIssueIdcard;
    }
    public String getPlaceIssueIdcard() {
        return this.placeIssueIdcard;
    }
    
    public void setPlaceIssueIdcard(String placeIssueIdcard) {
        this.placeIssueIdcard = placeIssueIdcard;
    }
    public String getAchievement() {
        return this.achievement;
    }
    
    public void setAchievement(String achievement) {
        this.achievement = achievement;
    }
    public String getProvince() {
        return this.province;
    }
    
    public void setProvince(String province) {
        this.province = province;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public Double getMoneyIncome() {
        return this.moneyIncome;
    }
    
    public void setMoneyIncome(Double moneyIncome) {
        this.moneyIncome = moneyIncome;
    }
    public Boolean getTypeJob() {
        return this.typeJob;
    }
    
    public void setTypeJob(Boolean typeJob) {
        this.typeJob = typeJob;
    }
    public Boolean getActive() {
        return this.active;
    }
    
    public void setActive(Boolean active) {
        this.active = active;
    }
    public Set<CvLocation> getCvLocations() {
        return this.cvLocations;
    }
    
    public void setCvLocations(Set<CvLocation> cvLocations) {
        this.cvLocations = cvLocations;
    }
    public Set<EmploymentHistory> getEmploymentHistories() {
        return this.employmentHistories;
    }
    
    public void setEmploymentHistories(Set<EmploymentHistory> employmentHistories) {
        this.employmentHistories = employmentHistories;
    }
    public Set<RecruitmentCv> getRecruitmentCvs() {
        return this.recruitmentCvs;
    }
    
    public void setRecruitmentCvs(Set<RecruitmentCv> recruitmentCvs) {
        this.recruitmentCvs = recruitmentCvs;
    }
    public Set<Education> getEducations() {
        return this.educations;
    }
    
    public void setEducations(Set<Education> educations) {
        this.educations = educations;
    }
    public Set<CvCategory> getCvCategories() {
        return this.cvCategories;
    }
    
    public void setCvCategories(Set<CvCategory> cvCategories) {
        this.cvCategories = cvCategories;
    }




}


