({
    doInit : function(component, event, helper)
    {
        var action = component.get("c.getContactList");
        
        action.setParams({ id:component.get('v.recordId')  });
        
        action.setCallback (this,
                            
                            function(response)
                            {
                                var responsevalue  =  response.getReturnValue(); 
                                
                                component.set('v.ContactList',responsevalue);
                                
                                
                            }
                            
                           );
        
        $A.enqueueAction(action,false);
    },
    Redirect: function(component, event, helper)
    {
        
        var eventvalue = event.getSource();
        var Id=eventvalue.get('v.name');
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId": Id,
            "slideDevName": "detail"
        });
        navEvt.fire();
        
        
    },
    
    handlerComponentEvent : function(component, event, helper)
    {
        alert('Test');
        var availablecontactList =    component.get('v.ContactList');
        
        var EventRecord1 = event.getParam('contactRecord');
        availablecontactList.push(EventRecord1);
        component.set('v.ContactList',availablecontactList)
        console.log(component.get('v.ContactList'));
        
    }
}
 
 
 
)