@isTest
public class TestVerifyDate {
    
    @isTest static void testScenario1() {
        Date dateinput = VerifyDate.CheckDates(date.ValueOf('2017-06-22'),date.ValueOf('2017-06-29'));
        System.assertEquals(date.ValueOf('2017-06-29'), dateinput);
    }
    
    @isTest static void testScenario2() {
        Date dateinput = VerifyDate.CheckDates(date.ValueOf('2016-06-22'),date.ValueOf('2017-06-23'));
        System.assertEquals(date.ValueOf('2016-06-30'), dateinput);
    }

}