public class mapcollection 
{
    public static void mapcoll()
    {
        Map <Integer,String> map1 = new Map<Integer,String>();
        map1.put(1,'Dhoni');
        map1.put(2,'Sachin');
        map1.put(3,'Shewag');
        
        system.debug(map1.get(1));
        system.debug(map1.keySet());
        system.debug(map1.values());
        system.debug(map1.remove(2));
    }

}