({
            handleReview : function(component, event, helper) 
            {        
                var componetEvent = component.getEvent('CreateContacts');
                componetEvent.setParams({
                    'ContactEvent' : component.get('v.ContactRecord')
                });
                componetEvent.fire();
        
            }
    
})