public class customset 
{
    public static void main()
    {
        List <CountryCode__c> cd = CountryCode__c.getAll().values();
        for(CountryCode__c c : cd)
        {
            system.debug('THE COUNTRY AND CODE IS : ' +c);
        }
    }
    public static void metho()
    {
        CountryCode__c cod = CountryCode__c.getInstance('UK');
        system.debug('THE SPECIFIED DATA IS : ' +cod);
    }
    public static void hier()
    {
        OfferPercentage__c off = OfferPercentage__c.getOrgdefaults();
        system.debug(off);
        OfferPercentage__c off1 = OfferPercentage__c.getinstance();
        system.debug(off1);
    }
    
}