public class AccDeleteTrigger 
{
    public static void Deleterecord(Map<Id,Account> accmap)
    {
        set<Id> accid = new set<Id>();
        for(Account a : accmap.values())
        {
            accid.add(a.id);
        }
        List<Contact> con = [SELECT name,id FROM Contact WHERE AccountID IN : accid];
        Integer consize = con.size();
        for(Account ac : accmap.values())
        {
            if(consize >= 2)
            {
                ac.addError('Account cannot be deleted');
            }
        }
    }
    
}