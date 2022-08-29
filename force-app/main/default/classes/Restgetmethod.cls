@Restresource(Urlmapping = '/rest/method/*')
global class Restgetmethod
{
    @HttpGet
    global static List<Account> returnstring()
    {
        RestRequest req = RestContext.request;
        system.debug(req);
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        return [SELECT name,id,(SELECT name FROM Contacts),(SELECT CaseNumber,AccountId from Cases) FROM Account WHERE Id =: accountId];
            
    }
    
}