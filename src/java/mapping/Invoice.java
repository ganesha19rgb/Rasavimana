package mapping;
// Generated 25-Jun-2013 13:27:56 by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Invoice generated by hbm2java
 */
public class Invoice  implements java.io.Serializable {


     private Integer id;
     private Check check;
     private Account account;
     private String invoId;
     private Date date;
     private String price;
     private String type;
     private Set<Personal> personals = new HashSet<Personal>(0);

    public Invoice() {
    }

    public Invoice(Check check, Account account, String invoId, Date date, String price, String type, Set<Personal> personals) {
       this.check = check;
       this.account = account;
       this.invoId = invoId;
       this.date = date;
       this.price = price;
       this.type = type;
       this.personals = personals;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Check getCheck() {
        return this.check;
    }
    
    public void setCheck(Check check) {
        this.check = check;
    }
    public Account getAccount() {
        return this.account;
    }
    
    public void setAccount(Account account) {
        this.account = account;
    }
    public String getInvoId() {
        return this.invoId;
    }
    
    public void setInvoId(String invoId) {
        this.invoId = invoId;
    }
    public Date getDate() {
        return this.date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    public String getPrice() {
        return this.price;
    }
    
    public void setPrice(String price) {
        this.price = price;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public Set<Personal> getPersonals() {
        return this.personals;
    }
    
    public void setPersonals(Set<Personal> personals) {
        this.personals = personals;
    }




}


