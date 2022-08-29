public class Apexdata 
{
    public static void values()
    {
        integer n,r,sum;
        n=123;
        while(n>0)
        {
            r = math.mod(n, 10);
            n = n / 10;
            //system.debug(+r);
            sum = r;
            system.debug(+sum);

            
        }
            }
    
}