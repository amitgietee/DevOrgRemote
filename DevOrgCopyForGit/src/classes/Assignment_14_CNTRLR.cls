public class Assignment_14_CNTRLR {

    public PageReference goToCase() {
        pagereference pg=new pagereference('/'+ApexPages.currentPage().getParameters().get('caseid'));
        return pg;
    }

    public List<Account> accList {get;set;}
    
    public Assignment_14_CNTRLR(){
        accList=[SELECT Id, Name,(SELECT Id, CaseNumber FROM Cases) FROM Account where ID in (SELECT accountId FROM Case)];
    }
    

}