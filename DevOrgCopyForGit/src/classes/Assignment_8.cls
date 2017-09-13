public class Assignment_8 {
    
    public List<Account> accountList {get;set;}
    public List<Opportunity> opportunityList {get;set;}
    public List<Account> accountListPage1 {get;set;}
    public List<Opportunity> opportunityListPage1 {get;set;}
    public Account accObject{get;set;}
    public Opportunity oppObject{get;set;}
    public List<String> industryList {get; set;}
    public Boolean showAccount{get; set;}
    public Boolean showOpportunity{get; set;}
    
    public Assignment_8(){
        accountListPage1 = new List<Account>();
        industryList = new List<String>();
        accountList = [SELECT Id, Name, Industry, Rating, (SELECT Id, Name, StageName, AccountId FROM Opportunities) FROM Account];
    
    }

    public void AllAccounts() {
        showAccount=true;
        showOpportunity=false;
        accountListPage1 = [ SELECT Id, Name, Industry, Rating FROM Account ];
    }
    public void getAccounts() {
        showAccount=true;
        showOpportunity=false;
        
        
        for(Account a : [SELECT Id, Name, Industry, Rating FROM Account]){
            accountListPage1.add(a);
            /*
            if(!String.isblank(a.industry)){
                industryList.add(a.industry);
            }
            */
        }
        
    }

    public void getOpportunities() {
        opportunityListPage1 = new List<Opportunity>();
    }

    public void clearAll() {
        if(opportunityList!=null){
            opportunityList.clear();
        }
        if(accountListPage1!=null){
            accountListPage1.clear();
        }
        if(opportunityListPage1!=null){
            opportunityListPage1.clear();
        }
        
        
        
    }

}