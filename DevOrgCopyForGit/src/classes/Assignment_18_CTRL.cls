public class Assignment_18_CTRL {
       public list<Account> accList{get;set;}
       
       public Assignment_18_CTRL(){
           accList=[select Name,createdDate from account];
       
       }


     /*public list<accWrapper> accList{get;set;}

    public Assignment_18_CTRL(){
        accList=new list<accWrapper>();
        
        for(Account a:[select Name,createdDate from account]){
            Date d=a.createdDate.date();
            accWrapper aw=new accWrapper(a,d); 
            accList.add(aw);
        }
    
    }
    
    
    public class accWrapper{
        Account acc;
        Date dt;
    
             public accWrapper(Account a, Date b){
                 acc=a;
                 dt=b;
             }
    
    
    }*/
}