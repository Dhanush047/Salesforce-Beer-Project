public class task 
{
    public static void tasksoql()
    {
        set <string> department2 = new set <string> {'Executive Team','Technology','Internal Operations','Finance'};
        List <contact> contactlist = [SELECT name,AccountId,Phone,Email from contact where Department IN : department2];
        system.debug(contactlist);
        
        List <contact> accidlist = [SELECT name,Account.id from Contact where Department In : department2];
        system.debug(accidlist);
        
    }
    
}