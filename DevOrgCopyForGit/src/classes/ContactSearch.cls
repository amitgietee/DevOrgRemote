public class ContactSearch {
    
    public static List<Contact> searchForContacts(String lName, String postalCode){
        List<Contact> accList=[SELECT Id, LastName, MailingPostalCode, FirstName, Name FROM Contact where
                              (LastName=:lName AND MailingPostalCode=:postalCode)];
        return accList;
    }

}