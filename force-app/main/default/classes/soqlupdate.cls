public class soqlupdate 
{
    public static void dummy()
    {
        Account name = [SELECT name,phone from account where name = 'DhoniMSD'];
        name.Name = name.Name + ' MSD';
        update name;
    }
    public static void dum()
    {
        List <Account> acc = [SELECT name,phone,id from account where name LIKE 'U%'];
        for(Account ac : acc)
        {
            ac.Name = ac.Name + 'June';
            
        }
        update acc;
    }

}