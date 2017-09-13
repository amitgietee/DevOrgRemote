public class Assignment_11 {


    public Map<id,List<Contact>> accMap{get;set;}
    public List<account> accList{get;set;}
   // public List<account.id> accList{get;set;}
    
    public Assignment_11(){
     accList=[SELECT Id, Name, BillingCountry, (select id,name from contacts) FROM Account];
     accMap=new Map<Id,List<Contact>>();
     for(account a:accList){
     
             accMap.put(a.id,a.Contacts);
    
      }
    }
    
    
    
    
}