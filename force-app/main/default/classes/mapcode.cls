public class mapcode 
{
    public mapcode()
    {
        Map<Integer , String> map1 = new Map<Integer , String>();
        map1.put(07,'Dhoni');
        map1.put(03,'Suresh Raina');
        map1.put(08,'Jadeja');
        system.debug(map1);
        
        Map<Integer , String> map2 = new Map<Integer , String>(); 
        map2.put(45,'Rohit Sharma');
        map2.put(18,'Virat Kholi');
        
        map2.putall(map1);
        system.debug(map2);
        
        system.debug(map2.get(7));
        
        List<String> listv = new List<String>();
        listv = map2.values();
        
        system.debug(listv);
        
        system.debug(map2.keyset());
        
        Boolean result = map2.containsKey(45);
        system.debug(result);
        Boolean result2 = map2.containsKey(99);
        system.debug(result2);
     
    }
    
}