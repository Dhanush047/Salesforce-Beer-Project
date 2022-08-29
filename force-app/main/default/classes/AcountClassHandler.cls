public class AcountClassHandler
{
    public static void accounttrigger(List<Account> acc)
    {
        List<Contact> conlist = new List<Contact>();
        for(Account a : acc)
        {
            Contact c = new Contact();
            if(a.Industry == 'Banking')
            {
                c.LastName = a.Name;
                c.Phone = a.Phone;
                c.AccountId = a.Id;
                conlist.add(c);
            }
        }
        insert conlist;
    }

}