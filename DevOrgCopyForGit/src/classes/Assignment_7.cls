public class Assignment_7 {

    


    public String Account_Name { get; set; }
    
    public List<Account> accList {get;set;}
    
    String query = 'select id, Name from Account ';
    
    public PageReference searchAccountDetails() {
        if(Account_Name != null&& Account_Name !=''){
        query=query +'where name like \'% '+Account_Name.trim() +'%\'';
        }
        //select id, Name from Account where name like '%oil%'
        system.debug('------------query------'+query);
        accList = Database.query(query);
        return null;
    }

}