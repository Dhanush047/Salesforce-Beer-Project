public class SaveContact
{
    @auraEnabled
    public static void consave(List<Contact> con)
    {
        system.debug(con);
        insert con;
    }

}