public class leapyear 
{
    public static void leap()
    {
        integer y = 2000;
        if(math.mod(y,4)==0)
        {
            if(math.mod(y,100)==0)
            {
                if(math.mod(y,400)==0)
                {
                    system.debug('Is a Leap Year');
                }
                else
                {
                    system.debug('Not a Leap Year');
                }
            }
        }
    }
}