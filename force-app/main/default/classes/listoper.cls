public class listoper 
{
    public static void strlist()
    {
        
        List <string> strlist = new List <string> {'Chennai Super Kings','Royal Challengers Banglore','Gujarat Titans','Mumbai Indians'};
        strlist.add('Rajasthan Royals');
        strlist.add('Sunrisers Hyderabad');
        
        system.debug(strlist.size());
        
        system.debug(strlist.get(0));
        
        system.debug(strlist);
        
        strlist.set(1,'RCB');
        system.debug(strlist);
        
        strlist.remove(4);
        system.debug(strlist);
        
        strlist.clear();
        system.debug(strlist);
        
        
    }
    
}