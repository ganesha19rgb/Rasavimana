package mapping;
// Generated 25-Jun-2013 12:48:59 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Check generated by hbm2java
 */
public class Check  implements java.io.Serializable {


     private Integer id;
     private String num;
     private String bank;
     private String branch;
     private String amount;
     private Set invoices = new HashSet(0);

    public Check() {
    }

    public Check(String num, String bank, String branch, String amount, Set invoices) {
       this.num = num;
       this.bank = bank;
       this.branch = branch;
       this.amount = amount;
       this.invoices = invoices;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNum() {
        return this.num;
    }
    
    public void setNum(String num) {
        this.num = num;
    }
    public String getBank() {
        return this.bank;
    }
    
    public void setBank(String bank) {
        this.bank = bank;
    }
    public String getBranch() {
        return this.branch;
    }
    
    public void setBranch(String branch) {
        this.branch = branch;
    }
    public String getAmount() {
        return this.amount;
    }
    
    public void setAmount(String amount) {
        this.amount = amount;
    }
    public Set getInvoices() {
        return this.invoices;
    }
    
    public void setInvoices(Set invoices) {
        this.invoices = invoices;
    }




}


