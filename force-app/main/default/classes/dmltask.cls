public class dmltask 
{
    public static void main()
    {
        Case caseob = new case();
        caseob.Origin = 'Email';
        caseob.Status = 'New';
        caseob.Priority = 'Medium';
        system.debug(caseob);
        insert caseob;
    }
    public static void leadob()
    {
        List<Lead> led = [SELECT name,Leadsource from lead WHERE Leadsource = 'Web'];
        for(Lead l : led)
        {
            if(l.LeadSource.contains('Web'))
            {
                l.Rating = 'Cold';
            }
            else
            {
                l.Rating = 'Hot';
            }
        }
        update led;
    }
    public static void meth()
    {
        Account acc = new Account();
        acc.Name = 'King Khan';
        acc.Phone = '9632587415';
        insert acc;
        
        Contact con = new Contact();
        con.AccountId = acc.Id;
        con.LastName = acc.Name;        
        insert con;
    }
    public static void task4()
    {
        List<Account> acclist = [SELECT name,id,phone FROM Account WHERE Industry = 'Banking'];
        List<Contact> conlist = new List<Contact> ();
        for (Account acc : acclist)
        {
            Contact con = new Contact();
            con.LastName = acc.Name;
            con.Phone = acc.Phone;
            con.AccountId = acc.Id;
            conlist.add(con);
        }
        system.debug(conlist);
        update conlist;
    }

}