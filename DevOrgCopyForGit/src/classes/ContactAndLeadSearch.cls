public class ContactAndLeadSearch {
    
    public static List<List< SObject>> searchContactsAndLeads(String name){
        
        List<List< SObject>> sobjList=[find :name in name fields returning Contact(Name), lead(Id) ];
        return sobjList;
        
    }

}