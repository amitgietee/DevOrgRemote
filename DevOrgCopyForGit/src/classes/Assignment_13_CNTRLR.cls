public class Assignment_13_CNTRLR {
        
    public Map <String,Integer> oppCountMap {get;set;}

    public Assignment_13_CNTRLR(){
        oppCountMap=new Map <String,Integer>();
        
        for (Opportunity o:[SELECT Id, StageName FROM Opportunity]){
            if(o.StageName!=''&&!oppCountMap.containskey(o.StageName.trim())){
                oppCountMap.put(o.StageName.trim(), 1);
            }else{
                integer count=oppCountMap.get(o.StageName.trim());
                count=count+1;
                oppCountMap.put(o.StageName.trim(), count);
            }
            
        }
    }


}