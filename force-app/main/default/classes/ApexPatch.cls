@Restresource(UrlMapping = '/patch/ve/*')
global class ApexPatch 
{
    @HttpPatch
    global static Account patchAccount(string name)
    {
        RestRequest req = RestContext.request;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account acc = new Account();
        acc.Name =name;
        acc.id = accountId;
        update acc;
        return acc;
    }
    
}