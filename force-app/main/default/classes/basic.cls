public class basic
{
    
    public static string reverse()
    {
        integer a = 123 , b = 555; 
        integer c,d = 0 ;
        while(a>0) 
        {
            c = Math.mod(a,10);
            d = (d * 10) + c;
            a = a / 10 ;
            
        }
        
        
        if(d == b)
        {
            return 'It is Palindrome ' +d + '' +'='+b;
        }
        else
        {
            return 'It is not Palindrome' +d + '' +'='+b ;
        }
    }
    
    
}