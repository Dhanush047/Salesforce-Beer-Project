({
    init: function (component, event, helper) 
    {
        component.set('v.column', [
            {label: 'Beer Order Number', fieldName: 'Name', type: 'text'},
            {label: 'Order Amount', fieldName: 'Order_Amount__c', type: 'Currency'},
            {label: 'City ', fieldName: 'Billing_City__c', type: 'text'},
            {label: 'State ', fieldName: 'Billing_State__c', type: 'text'}
        ]);
        var action = component.get('c.getdatatable');
        action.setCallback(this, function(response){
            var state = response.getState();
            //alert(state);
            if(state === 'SUCCESS' || state==='DRAFT' ){
                var responseValue = response.getReturnValue();
                console.log('responseValue ', responseValue)
                component.set('v.data', responseValue);
            }
        });
        $A.enqueueAction(action);
    }
})
