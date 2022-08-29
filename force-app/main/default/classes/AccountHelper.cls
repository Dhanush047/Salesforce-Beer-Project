public class AccountHelper
{
    public static void Updaterecord(List<Account> acclist)
    {
        set<Id> accid = new set<Id>();
        for(Account ac : acclist)
        {
            accid.add(ac.Id);
        }
        List<Account> accountlist = [SELECT id,Name,phone,(SELECT id,Name,phone from Contacts) FROM Account WHERE Id IN : accid];
        List<Contact> conlist = new List<Contact>();
        for(Account o : accountlist)
        {
            for(Contact c : o.Contacts)
            {
                c.phone = o.phone;
                conlist.add(c);
            }
        }
        if(conlist.size() > 0)
        {
            update conlist;
        }
    }

}