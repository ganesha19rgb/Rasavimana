package mapping;
// Generated 25-Jun-2013 13:27:56 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Distributors generated by hbm2java
 */
public class Distributors  implements java.io.Serializable {


     private Integer id;
     private String distriId;
     private String distriName;
     private String phone;
     private String remarks;
     private Set<Agent> agents = new HashSet<Agent>(0);

    public Distributors() {
    }

    public Distributors(String distriId, String distriName, String phone, String remarks, Set<Agent> agents) {
       this.distriId = distriId;
       this.distriName = distriName;
       this.phone = phone;
       this.remarks = remarks;
       this.agents = agents;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getDistriId() {
        return this.distriId;
    }
    
    public void setDistriId(String distriId) {
        this.distriId = distriId;
    }
    public String getDistriName() {
        return this.distriName;
    }
    
    public void setDistriName(String distriName) {
        this.distriName = distriName;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getRemarks() {
        return this.remarks;
    }
    
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public Set<Agent> getAgents() {
        return this.agents;
    }
    
    public void setAgents(Set<Agent> agents) {
        this.agents = agents;
    }




}


