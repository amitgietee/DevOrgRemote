global class MyFirstSchedulableClass implements Schedulable {


    global void execute(SchedulableContext ctx){
        System.debug('<<<<<<<<<Inside my Class>>>>>>');
    
    }
    
}