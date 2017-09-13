public class Assignment_9 {
    
    public List<Account> accList {get;set;}
    public List<Opportunity> oppList {get;set;}
    public Boolean showAccount {get;set;}
    public Boolean showOpportunity {get;set;}
    
    
    public void AllAccounts(){
        showAccount=true;
        showOpportunity=false;
        accList=[select id,Name, Industry from Account];
    }
    
    public void AllOpportunity(){
        showAccount=false;
        showOpportunity=true;
        accList=[select id,Name, Industry from Account];
    }
    
    public void clearAll(){
        if(accList!=null){
            accList.clear();
        }
        if(oppList!=null){
            oppList.clear();
        }
    }

}