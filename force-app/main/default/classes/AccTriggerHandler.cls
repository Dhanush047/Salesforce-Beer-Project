public class AccTriggerHandler
{
    public static void acctri(List<Account> ac)
    {
        for(Account a : ac)
        {
            a.description = 'This is Description of ' + a.name;
        }
    }
    public static void beforeupdate(List<Account> acc)
    {
        for(Account a : acc)
        {
            if(a.Phone == null)
            {
                a.addError('Phone is Required');
            }
        }
    }
    public static void beforedelete(List<Account> accl)
    {
        Id profileId = UserInfo.getProfileId();
        Profile profileName = [SELECT Name FROM Profile WHERE id=:profileId];
        for(Account a : accl)
        {
            
            if(profileName.Name != 'Standard User')
            {
            a.addError('Only Standard User can Delete');
            }
        }
    }
    public static void contactcreation(List<Account> ac)
    {
        List<Contact> con = new List<Contact>();
        for(Account a : ac)
        {
            Contact c = new Contact();
            c.FirstName = 'MR.';
            c.lastname = a.Name;
            c.phone = a.Phone;
            c.AccountId = a.Id;
            con.add(c);
        }
        insert con;
    }
    public static void acctrigger(List<Account> aclist)
    {
        for(Account a : aclist)
        {
            if(a.Industry == 'Banking' || a.Industry == 'HealthCare')
            {
                a.Rating = 'Hot';
            }
        }
    }
}