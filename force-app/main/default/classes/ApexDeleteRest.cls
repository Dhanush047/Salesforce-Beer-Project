@Restresource(Urlmapping = '/delete/av/*')
global class ApexDeleteRest 
{
    @Httpdelete
    global static Account restdelete()
    {
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account acc = [SELECT id,name from Account Where Id =: accountid];
        delete acc;
        return acc;
    }

}