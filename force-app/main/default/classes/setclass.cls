public class setclass 
{
    public setclass()
    {
        set <string> strset = new set <string> ();
        strset.add('RCB');
        strset.add('CSK');
        strset.add('GT');
        system.debug(strset);
        
        set <string> strnew = strset.clone();
        system.debug('New Set is' +strnew);
        
        system.debug(strnew.size());
        
        boolean str = strnew.contains('RCB');
        system.debug(str);
        
    }
}