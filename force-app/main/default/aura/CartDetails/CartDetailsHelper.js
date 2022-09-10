({
    validate : function(component, event, helper) 
    {
        var isValid = component.find('address').reduce(function (validSoFar, inputCmp) {
            inputCmp.showHelpMessageIfInvalid();
            inputCmp.set('v.validity', {valid:false, badInput :true});
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        return isValid; 

    },
    getaddr : function(component, event, helper) 
    {
       // alert("Helper 2 Inside")
        var action = component.get('c.fetchdata1');
        
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === 'SUCCESS' || state === 'DRAFT'){
                var responseData = response.getReturnValue();
                var resultData = JSON.parse(responseData);
                console.log('resultData ', resultData);
                component.set('v.addressList' , resultData);
            } else if(state === 'INCOMPLETE'){
                console.log('User is offline and System does not support offline!.');
            }else if(state === 'ERROR'){
                var errors = response.getError();
                console.log('Error Occured ', errors);
            }else{
                
            }
        });
        action.setStorable();
        $A.enqueueAction(action)
    }
})