public class Assignment_4 {

    public List<Contact> contactList {get;set;}
    public List<Contact> contactList2 {get;set;}

    
    public void Assignment_4M(){
            contactList2 =[SELECT Id, AccountId, FirstName, LastName, Salutation, Name, MobilePhone, Email, MailingCountry FROM Contact];
            contactList=new List<Contact>();
            for(Contact c:[SELECT Id, Account.Name, FirstName, LastName, Salutation, Name, MobilePhone, Email, MailingCountry FROM Contact] ){
            
                if(c.salutation=='Chairman'){
                    c.salutation='CEO';
                    upsert c;
                
                }
                Contact ctemp=new Contact();
                ctemp.Salutation=c.salutation;
                ctemp.FirstName=c.FirstName;
                ctemp.LastName=c.LastName;
                //ctemp.Name=c.Name;
                ctemp.MobilePhone=c.MobilePhone;
                ctemp.Email=c.Email;
                ctemp.MailingCountry =c.MailingCountry ;
                ctemp.Account=c.Account;
                //update ctemp;
                contactList.add(ctemp);
            }
    }

}