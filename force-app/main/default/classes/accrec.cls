public class accrec 
{
    public static void record()
    {
        account acc = new account();
        acc.Name = 'Dhoni test';
        acc.Phone = '8523697415';
        insert acc;
        
    }
    
    public static void rec()
    {
        account ac = new account(name = 'Sachin',phone = '8855414778', AnnualRevenue = 80000);
        insert ac;        
        
    }
    
    public static void met()
    {
        List<Contact> conlist = [SELECT name,phone from Contact WHERE name LIKE 'A%' ];
        List <Account> acclist = new List <Account>();
        for(contact c : conlist)
        {
            account acc = new account();
            acc.Name = c.Name;
            acc.Phone = c.Phone;
            acclist.add(acc);
        }
        insert acclist;
        
    }
    public static void meth()
    {
        List<Contact> conlist = [SELECT name,phone from Contact WHERE name LIKE 'A%' ];
        List <Account> acclist = new List <Account>();
        for(contact c : conlist)
        {
            account acc = new account(name = 'Watson',phone = '2555414778', AnnualRevenue = 80000);
            acclist.add(acc);
        }
        insert acclist;
    }

}