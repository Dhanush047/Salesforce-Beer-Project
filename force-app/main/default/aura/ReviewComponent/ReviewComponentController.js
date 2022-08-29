({
    handleRemove : function(component, event, helper) 
    {
        var index = event.currentTarget.id;
        var existingRecords = component.get('v.contactList');
        existingRecords.splice(index , 1);
        component.set('v.contactList', existingRecords);
        
    },
    handlesave : function(component, event, helper) 
    {
        var action = component.get('c.consave');
        
        action.setParams(
            {
                con:component.get('v.contactList'),
                // AccId :component.get('v.accountId')
                
            });
        
        action.setCallback (this,function(response){
            var state = response.getState();
            var responsevalue  =  response.getReturnValue(); 
            if( state == "SUCCESS"){
                alert('Success');
                     }
            else {
                console.log('There was a problem : '+response.getError());
                alert('There was a problem ');
            }        }  );

        $A.enqueueAction(action);
        
    }
    
})