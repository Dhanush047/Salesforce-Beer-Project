public class upsertapex
{
    public static void empty()
    {
        List<Employee__c> emp = [SELECT Name, Phone_Number__c FROM Employee__c WHERE name LIKE 'D%'];
        List<Employee__c> emplo = new List<Employee__c>();
        for(Employee__c e : emp)
        {
            if(e.name.contains('D'))
            {
                e.name = e.name + ' MCA';
                emplo.add(e);
            }
            else
            {
                Employee__c emp1 = new Employee__c();
                emp1.Name = 'Dummy Bawa';
                emplo.add(emp1);
            }
        }
        upsert emplo;
    }

}