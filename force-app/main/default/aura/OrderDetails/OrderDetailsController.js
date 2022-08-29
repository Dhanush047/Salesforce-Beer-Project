({
    doInit : function(component, event, helper) 
    {
        var pageRef = component.get('v.pageReference');
        if(pageRef)
        {
            var state = pageRef.state;
            component.set('v.orderId' , state.c__OrderId);
            component.find('recordViewer').reloadRecord();
        }
        
    }
})