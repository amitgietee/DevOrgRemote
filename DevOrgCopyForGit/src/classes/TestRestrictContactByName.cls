@isTest
public class TestRestrictContactByName {
    
    @isTest static void TestInvalidContactInsertNegative() {
       
        Contact cntct = new Contact(FirstName='Gaurav',LastName='INVALIDNAME');
     
        Test.startTest();
        Database.SaveResult result = Database.insert(cntct, false);
        Test.stopTest();
   
      
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
    
     @isTest static void TestInvalidContactInsertPositive() {
       
        Contact cntct = new Contact(FirstName='Gaurav',LastName='Vyas');
     
        Test.startTest();
        Database.SaveResult result = Database.insert(cntct, false);
        Test.stopTest();
   
      
        System.assert(result.isSuccess());
        System.assert(result.getErrors().size() == 0);
    }

}