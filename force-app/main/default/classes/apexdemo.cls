public class apexdemo 
{
    public static void demo()
    {
        Account acc = new Account();
        acc.Name = 'ABCDE';
        acc.Phone = '8214796325';
        acc.AnnualRevenue = 8522214;
        system.debug(acc);
        insert acc;
    }
    public static void dem()
    {
        Contact con = new Contact(Lastname = 'Dhanush AN', Phone = '8523697415');
        system.debug(con);
        insert con;
        
    }
    public static void con()
    {
        List<Contact> con1 = [SELECT Lastname,Phone FROM Contact where Lastname LIKE 'U%' LIMIT 3];
        List<Account> acclist = new List<Account>();
        for(Contact c : con1)
        {
            Account acc1 = new Account();
            acc1.Name = c.Lastname;
            acc1.Phone = c.Phone;
            system.debug(acc1);
            acclist.add(acc1);
        }
        system.debug(acclist);
        insert acclist;
    }

}