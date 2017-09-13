public class Asssignment_2 {

    


//List<Contact> contactList=new List<Contact>();
public List<Contact> contactList{get;set;}
public List<String> inputList{get;set;}
string query='SELECT Id';

public Asssignment_2 (){
        //contactList=[SELECT Id, FirstName, LastName, Email, HomePhone, MobilePhone, MailingCountry, Account.Name, Account.AnnualRevenue FROM Contact];

}

public void showContacts() {
        query=query +', FirstName,Account.Name FROM Contact';
        contactList=Database.query(query);
}

public String country{get;set;}

     


     

     public List<SelectOption> getcountryOptions()

     {

            List<SelectOption> countryOptions = new List<SelectOption>();       

              

            countryOptions.add(new SelectOption('India','India'));

            countryOptions.add(new SelectOption('USA','USA'));

            countryOptions.add(new SelectOption('Japan','Japan'));

   

            return countryOptions;

     }

}