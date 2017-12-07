public class IPL2K18_Dashboard_MatchPoints_Ctrl 
{
    public List<Cricket_Actual_Team__c> listCricketAT{get;set;}
    public List<wrapClass> listWrap{get;set;}
    
    public IPL2K18_Dashboard_MatchPoints_Ctrl()
    {
        listCricketAT = new List<Cricket_Actual_Team__c>();
        listWrap = new List<wrapClass>();
        Map<String,Integer> mapCAT = new Map<String,Integer>();
        listCricketAT = [SELECT Id,Name,Match_Points__c
                        FROM Cricket_Actual_Team__c];
        
        for(Cricket_Actual_Team__c CAT : listCricketAT)
        {
            mapCAT.put(CAT.Name,Integer.valueOf(CAT.Match_Points__c));
        }
        
        for(String str : mapCAT.keySet())
        {
            
        }
    }
     
    public class wrapClass
    {
        public List<String> teamNameStr{get;set;}
        public List<Integer> teamPointsInt{get;set;}
        public wrapClass(List<String> teamNameStr, List<Integer> teamPointsInt)
        {
            this.teamNameStr = teamNameStr;
            this.teamPointsInt = teamPointsInt;
        }
    }
}