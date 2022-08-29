public class apexupdate 
{
    public static void main()
    {
        Account name = [SELECT name FROM Account where name = 'ABCDE'];
        name.Name = 'QWERTY';
        update name;
    }
    public static void met()
    {
        Account name = [SELECT name FROM Account where name = 'QWERTY'];
        name.Name = name.Name + ' BNM';
        update name;
    }
    public static void meth()
    {
        List<Account> acc = [SELECT name FROM Account where name LIKE 'E%' LIMIT 2];
        for(Account ac : acc)
        {
            ac.Name = ac.Name + ' Update';
        }
        update acc;
    }

}