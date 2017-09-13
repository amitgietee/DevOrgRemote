public class Assignment_16_CTRL {
    public List<account> acclist {get;set;}
    public List<wrapperClass> wrapperClasslist {get;set;}
    
    
    public Assignment_16_CTRL(){
        acclist = [select id, name, AnnualRevenue from account];
        wrapperClasslist = new List<wrapperClass>();
        for(Account a: acclist){
            wrapperClass wc=new wrapperClass(a);
            wrapperClasslist.add(wc);
            
        }
    }
    
    public class wrapperClass{
       public Account a {get;set;}
       public Boolean isSelected {get;set;}
       
       
       public wrapperClass(Account acc){
           a=acc;
          
           if(acc.annualRevenue> 100000){
                isSelected=true;
            }


       }
    }

}