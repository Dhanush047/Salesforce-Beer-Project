public class AccountListComp 
{
    @auraEnabled
    public static List<Account> acclist(String a)
    {
        system.debug(a);
        string search1 = a;
        List<Account> aclist = [SELECT Id, Name, Type, Phone, Email__c FROM Account WHERE Name LIKE :search1+'%'];
        system.debug(aclist);
        return aclist;
        
    }

}