public class demosobj 
{
    public static void demosob()
    {
        account acc = new account();
        acc.Name = 'kumar Sangakkara';
        insert acc;
        
        Working_Department__c dept = new Working_Department__c();
        dept.Name = 'MCA';
        insert dept;
        
        Working_Employee__c emp = new Working_Employee__c();
        emp.Name = acc.name;
        emp.Department__c = dept.Name;
        insert emp;
       
        
        
    }
    
}