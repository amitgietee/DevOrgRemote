public class StringArrayTest {
    public static List<String> generateStringArray(integer n){
        String[] tests = new List<String>();
        for(Integer i=0;i<n;i++) {
           tests.add('Test '+i.format());
            System.debug(tests[i]);

        }
        return tests;

    }
}