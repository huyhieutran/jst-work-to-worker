package client.entity;
// Generated May 14, 2013 3:06:40 PM by Hibernate Tools 3.2.1.GA



/**
 * RecruitmentCv generated by hbm2java
 */
public class RecruitmentCv  implements java.io.Serializable {


     private int id;
     private Cv cv;
     private Recruitment recruitment;

    public RecruitmentCv() {
    }

	
    public RecruitmentCv(int id) {
        this.id = id;
    }
    public RecruitmentCv(int id, Cv cv, Recruitment recruitment) {
       this.id = id;
       this.cv = cv;
       this.recruitment = recruitment;
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
    public Recruitment getRecruitment() {
        return this.recruitment;
    }
    
    public void setRecruitment(Recruitment recruitment) {
        this.recruitment = recruitment;
    }




}


