public class apexcode 
{
    public static void code()
    {
        integer n = 10;
        integer sum = 0;
        for (integer i=1; i<n ;i++)
        {
            if(math.mod(n, i)==0)
                sum = sum + i;
        }
        if(sum == n)
        {
            system.debug('it is perfect number');
        }
        else
        {
            system.debug('not a perfect number');
        }
        
    }

}