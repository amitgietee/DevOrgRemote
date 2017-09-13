public class AccountCtRL{
    
    public static void getDetails(){
        
        
        Integer count=[select count() from account];
        System.debug('Count>>>>'+count);
    }
    
    
}