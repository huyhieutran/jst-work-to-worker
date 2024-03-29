package client.entity;
// Generated May 14, 2013 3:06:40 PM by Hibernate Tools 3.2.1.GA



/**
 * RecruitmentLocation generated by hbm2java
 */
public class RecruitmentLocation  implements java.io.Serializable {


     private int id;
     private Recruitment recruitment;
     private Location location;

    public RecruitmentLocation() {
    }

	
    public RecruitmentLocation(int id) {
        this.id = id;
    }
    public RecruitmentLocation(int id, Recruitment recruitment, Location location) {
       this.id = id;
       this.recruitment = recruitment;
       this.location = location;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Recruitment getRecruitment() {
        return this.recruitment;
    }
    
    public void setRecruitment(Recruitment recruitment) {
        this.recruitment = recruitment;
    }
    public Location getLocation() {
        return this.location;
    }
    
    public void setLocation(Location location) {
        this.location = location;
    }




}


