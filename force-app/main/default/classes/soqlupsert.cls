public class soqlupsert 
{
    public static void upsert1()
    {
        List <Contact> con = [SELECT Lastname from Contact where Lastname LIKE 'S%'];
        List <Contact> conlist = new List <Contact>();
        for(Contact c : con)
        {
            if(c.LastName.contains('June'))
            {
                c.LastName = c.LastName + ' Agent';
                conlist.add(c);
            }
            else
            {
                Contact co2 = new Contact();
                co2.LastName = 'Prasanth';
                conlist.add(co2);
            }
        }
        upsert conlist;
    }
    

}