public class Assignment_6 {

    public boolean accBoolean{get;set;}
    public boolean cntBoolean{get;set;}
    public boolean oppBoolean{get;set;}


    public List<schema.Account> accList {get; set;}
    public List<schema.Contact> contactList {get; set;}
    public List<schema.Opportunity> opportunityList {get; set;}
    
    public Assignment_6(){
        accList = new List<Account>();
        contactList = new List<Contact>();
        opportunityList = new List<Opportunity>();
    }
    
    public void showAccounts(){
        accBoolean=true;
        cntBoolean=false;
        oppBoolean=false;
        accList =[select id, name from Account limit 5];
        
    
    }
    
    public void showContacts(){
        accBoolean=false;
        cntBoolean=true;
        oppBoolean=false;
        contactList =[select id, name from Contact limit 5];
        
    }
    
    public void showOpportunities(){
        accBoolean=false;
        cntBoolean=false;
        oppBoolean=true;
        opportunityList =[select id, name from Opportunity limit 5];
        
    }
    
    public void ClearAll() {
        accList = null;
        contactList = null;
        opportunityList = null;
    }

}