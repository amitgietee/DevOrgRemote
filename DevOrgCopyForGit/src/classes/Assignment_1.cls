public class Assignment_1 {
Transient public List<Company__c> acclist {get; set;}
    
    public Assignment_1 (){
        acclist =[SELECT Id, Name,  Annual_Revenue__c, Expense_on_Salary__c,(SELECT Name,Email__c,Phone__c,Salary__c,Status__c FROM Contacts_for_Company__r) FROM Company__c where ID IN (select User_Company__c  FROM Contact_for_Company__c)  ];
    }

}