public class Assignment_12 {

    public Map<Id, List<Contact>> cMap {get;set;}

    public Assignment_12(){
        cMap=new Map<Id, List<Contact>>();
        
        for(Account a:[select id, (select id, name from Contacts) from Account]){
            if(!cMap.containsKey(a.id)){
                cMap.put(a.id,new List<Contact>());
            }
            
            if(cMap.containsKey(a.id)){
                cMap.put(a.id,a.Contacts);
            }
        }
    }

}