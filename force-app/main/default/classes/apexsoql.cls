public class apexsoql 
{
    public static void soql()
    {
        list<Department__c> emp = [SELECT Id, Name, Dept_ID__c, Duration__c,(SELECT name FROM Employees__r)  FROM Department__c];
        for (Department__c dep : emp)
        {
            system.debug(emp);
        }
    }

}