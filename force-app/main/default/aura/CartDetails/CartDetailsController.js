({
    doInit : function(component, event, helper)
    {
        var pageReference = component.get('v.pageReference');
        var state = pageReference.state;
        
        console.log(' cartId ' ,state.cartId__c);
        component.set('v.cartId',state.cartId__c );
    }
})