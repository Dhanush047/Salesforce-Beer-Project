public class BeerList 
{
    @auraEnabled
    public static List<Beer__c> beerlist(String a)
    {
        system.debug(a);
        string search1 = a;
        if(a==Null)
        {
            List<Beer__c> blist = [SELECT Id, Name, Image__c,Price__c,Alcohol__c,Tags__c FROM Beer__c];
            system.debug(blist);
            return blist;
        }
        else
        {
            List<Beer__c> blist = [SELECT Id, Name, Image__c,Price__c,Alcohol__c,Tags__c FROM Beer__c WHERE Name LIKE :search1+'%'];
            system.debug(blist);
            return blist;
        }
        
    }
    
}