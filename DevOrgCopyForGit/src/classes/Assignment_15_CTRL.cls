public class Assignment_15_CTRL {
    
    public Map<String, Map<String,Integer>> oppParentMap {get;set;}
    public Map<String,Integer> oppChildMap {get;set;}
    
    public Assignment_15_CTRL(){
        oppParentMap=new Map<String, Map<String,Integer>>();
        oppChildMap=new Map<String,Integer>();
        schema.DescribeFieldResult oppLeadSource= Opportunity.LeadSource.getDescribe();
        schema.DescribeFieldResult oppStage= Opportunity.StageName.getDescribe();
        List<Schema.PicklistEntry> oppLSList=oppLeadSource.getPickListValues();
        List<Schema.PicklistEntry> oppStgList=oppStage.getPickListValues();
        
        for(Schema.PicklistEntry a: oppLSList){
                String leadSource=a.getValue().trim();
                for(Schema.PicklistEntry b: oppStgList){
                    String leadStage=b.getValue().trim();
                    
                    if(!oppChildMap.containsKey(leadStage)){
                    oppChildMap.put(leadStage,0);
                    }
                }
                
                
                
                if(!oppParentMap.containsKey(leadSource)){
                   oppParentMap.put(leadSource,oppChildMap);
                
                }
        
        
        }
    }

}