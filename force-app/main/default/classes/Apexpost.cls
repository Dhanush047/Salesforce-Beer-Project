@Restresource(urlMapping = '/method/as/*')
global class Apexpost 
{
    
    @httppost
   /* global static Case conpost(String org,String stats)
    {
        Case cas = new Case();
        cas.Status = stats;
        cas.Origin = org;
        insert cas;
        return cas;
    }*/
   /* global static Account postAccount(String Name,String Phone)
    {
        Account acc = new Account();
        acc.Name =Name;
        acc.Phone = Phone;
        insert acc;
        return acc;
    }*/
    global static Employee__c emplist(String Name,String Phone)
    {
        Employee__c emp = new Employee__C();
        emp.Name = name;
        emp.Phone_Number__c = phone;
        insert emp;
        return emp;
    }

}