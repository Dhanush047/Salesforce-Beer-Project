public class metadat 
{
    public static void met()
    {
        List<Country_Code__mdt> meta = [SELECT Id,Label,Code__c FROM Country_Code__mdt];
        for(Country_Code__mdt me : meta)
        {
            system.debug('THE COUNTRY CODES ARE : ' +me);
        }
    }
    
}