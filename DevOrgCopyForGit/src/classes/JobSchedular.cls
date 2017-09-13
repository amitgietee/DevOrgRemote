public class JobSchedular{

    public static void scheduleJob(){
            
        MyFirstSchedulableClass obj=new MyFirstSchedulableClass ();
        String sch= '20 30 8 10 2 ?';
        String jobID=System.schedule('JobThroughApex',sch,obj);
        
        System.debug('<<<<<<<jobId>>>>>'+jobID);
    
    }

}