public class futureclass
{
    public futureclass()
    {
        brush();
        shower();
        service();
        party();        
    }
    public void brush()
    {
        system.debug('GO AND BRUSH :)');
    }
    public void shower()
    {
        system.debug('PLEASE TAKE SHOWER :)');
    }
    public void service()
    {
        system.debug('THE VEHICLE IS BROKEN :( PLEASE SERVICE IT ');
    }
    @future
    public static void party()
        {
            system.debug('HAVE FUN :) AT PARTY');
        }

}