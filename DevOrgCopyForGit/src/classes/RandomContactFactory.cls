public class RandomContactFactory {
    
    
    public static List<Contact> generateRandomContacts(Integer count, String Name){
        List<Contact> cntList=new List<Contact>();
        
        for(integer i=0; i<count; i++){
            Contact c=new Contact(FirstName=Name+(i+1), LastName=Name+(i+2));
            cntList.add(c);
  
        	Database.SaveResult result = Database.insert(c, false);

        }
        
        
        return cntList;
        
    }

}