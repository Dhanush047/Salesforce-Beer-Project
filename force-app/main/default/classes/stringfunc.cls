public class stringfunc
{
    public static void stringfun()
    {
        string str = 'Fight till the dusk';
         
        system.debug('Capitalize = ' +str.capitalize());
        system.debug('Contains = ' +str.contains('till'));
        system.debug('Uppercase = ' +str.toUppercase());
        system.debug('Lowercase = ' +str.toLowercase());
        system.debug('Equals = ' +str.equals('Fight till the dusk'));
        system.debug('Length = ' +str.length());
        system.debug('Reverse = ' +str.reverse());
    }

}