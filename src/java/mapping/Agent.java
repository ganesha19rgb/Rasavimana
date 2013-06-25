package mapping;
// Generated 25-Jun-2013 09:57:44 by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Agent generated by hbm2java
 */
public class Agent  implements java.io.Serializable {


     private Integer id;
     private Route route;
     private Distributors distributors;
     private District district;
     private String agtId;
     private String agtName;
     private Date date;
     private String address;
     private String phone;
     private String comMargin;
     private String vat;
     private String gagtId;
     private String remarks;
     private Set<Deliver> delivers = new HashSet<Deliver>(0);
     private Set<Rtn> rtns = new HashSet<Rtn>(0);
     private Set<Account> accounts = new HashSet<Account>(0);
     private Set<Personal> personals = new HashSet<Personal>(0);
     private Set<Agenthas> agenthases = new HashSet<Agenthas>(0);

    public Agent() {
    }

	
    public Agent(Route route, Distributors distributors, District district) {
        this.route = route;
        this.distributors = distributors;
        this.district = district;
    }
    public Agent(Route route, Distributors distributors, District district, String agtId, String agtName, Date date, String address, String phone, String comMargin, String vat, String gagtId, String remarks, Set<Deliver> delivers, Set<Rtn> rtns, Set<Account> accounts, Set<Personal> personals, Set<Agenthas> agenthases) {
       this.route = route;
       this.distributors = distributors;
       this.district = district;
       this.agtId = agtId;
       this.agtName = agtName;
       this.date = date;
       this.address = address;
       this.phone = phone;
       this.comMargin = comMargin;
       this.vat = vat;
       this.gagtId = gagtId;
       this.remarks = remarks;
       this.delivers = delivers;
       this.rtns = rtns;
       this.accounts = accounts;
       this.personals = personals;
       this.agenthases = agenthases;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Route getRoute() {
        return this.route;
    }
    
    public void setRoute(Route route) {
        this.route = route;
    }
    public Distributors getDistributors() {
        return this.distributors;
    }
    
    public void setDistributors(Distributors distributors) {
        this.distributors = distributors;
    }
    public District getDistrict() {
        return this.district;
    }
    
    public void setDistrict(District district) {
        this.district = district;
    }
    public String getAgtId() {
        return this.agtId;
    }
    
    public void setAgtId(String agtId) {
        this.agtId = agtId;
    }
    public String getAgtName() {
        return this.agtName;
    }
    
    public void setAgtName(String agtName) {
        this.agtName = agtName;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getComMargin() {
        return this.comMargin;
    }
    
    public void setComMargin(String comMargin) {
        this.comMargin = comMargin;
    }
    public String getVat() {
        return this.vat;
    }
    
    public void setVat(String vat) {
        this.vat = vat;
    }
    public String getGagtId() {
        return this.gagtId;
    }
    
    public void setGagtId(String gagtId) {
        this.gagtId = gagtId;
    }
    public String getRemarks() {
        return this.remarks;
    }
    
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public Set<Deliver> getDelivers() {
        return this.delivers;
    }
    
    public void setDelivers(Set<Deliver> delivers) {
        this.delivers = delivers;
    }
    public Set<Rtn> getRtns() {
        return this.rtns;
    }
    
    public void setRtns(Set<Rtn> rtns) {
        this.rtns = rtns;
    }
    public Set<Account> getAccounts() {
        return this.accounts;
    }
    
    public void setAccounts(Set<Account> accounts) {
        this.accounts = accounts;
    }
    public Set<Personal> getPersonals() {
        return this.personals;
    }
    
    public void setPersonals(Set<Personal> personals) {
        this.personals = personals;
    }
    public Set<Agenthas> getAgenthases() {
        return this.agenthases;
    }
    
    public void setAgenthases(Set<Agenthas> agenthases) {
        this.agenthases = agenthases;
    }




}

