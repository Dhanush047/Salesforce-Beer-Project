public class dynamicsoql 
{
    public static void main(String str)
    {
        String s1 = 'SELECT name from ' +str;
        system.debug(s1);
        List <sobject> s2 = Database.query(s1);
        for(sobject str2 : s2)
        {
            system.debug(str2);
        }
        
    }

}