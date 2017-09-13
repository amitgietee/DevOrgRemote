global class AccountService {
    webservice static String createCustomer(String name, String phone, String city){
        Account objA=new Account();
        objA.Name=name;
        objA.Phone=phone;
        objA.BillingCity=city;
        
        insert objA;
        
        if(objA.Id!=null){
            return 'success';
        }else{
            return 'failure';
        }
        
    }

}