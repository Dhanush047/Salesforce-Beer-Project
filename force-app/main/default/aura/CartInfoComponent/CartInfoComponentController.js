({
    cart : function(component, event, helper) 
    {
        var params = event.getParam('cartinforecord');
        
        if(params){
            var beerRecord = params;
            var existingRecords = component.get('v.cartList');
            if(existingRecords)
            {
                existingRecords.push(beerRecord);
                component.set('v.cartList', existingRecords);
                console.log("existingRecords - ",existingRecords);
                
            } else 
            {
                existingRecords = [];
                existingRecords.push(beerRecord);
                component.set('v.cartList', existingRecords);
                console.log("existingRecords - ",existingRecords);
            }
            
            var names = [];
            for(var i=0; i<component.get('v.cartList').length;  i++)
            {
                names.push(component.get('v.cartList')[i].Id);
                console.log(component.get('v.cartList')[i].Id);
            }  
            component.set('v.beerNameList', names);
            console.log("Name Array - ",names);
   
            var resultsToast = $A.get("e.force:showToast"); 
            resultsToast.setParams({ "title": "Added to Cart", "message":params.Name+ " has been successfully added to cart.", "type" : "success" });
            resultsToast.fire();
        }
    },
    goToCart : function(component, event, helper)
    {
        
        var pageReference = component.find("navService");
        
        var pageReferenceNav = {    
            "type": "standard__component",
            "attributes": {
                "componentName": "c__CartDetails"    
            },    
            state: {
                c__cartRecord : component.get("v.recordList")
                
            }
        };
        pageReference.navigate(pageReferenceNav);
        
        
        
        
        
    },
goToCart2 : function(component, event, helper) 
    {
        
        var action = component.get('c.getCartId');

        action.setParams({
            'beerList' : component.get('v.beerNameList')
        });
        
        action.setCallback(this, function(response){
            var state = response.getState();
                 //debugger;
             // alert(response.getReturnValue())
              console.log("cart ID - ", response.getReturnValue())
            if(state === 'SUCCESS' || state === 'DRAFT'){
                
              var pageReference = component.find("navService");
                var pageReferenceNav = {    
                    "type": "standard__component",
                    "attributes": {
                       "componentName": "c__CartDetails" 
                    },    
                    "state": {
                        cartId__c: response.getReturnValue()
                    }
                };
                pageReference.navigate(pageReferenceNav, true);
              
            }else if(state === 'INCOMPLETE'){
                console.log('User is offline System does not support offline');
            }else if(state ==='ERROR'){
                var errors = response.getError();
                if(errors || errors[0].pageMessage){
                    console.log(' page Error ', errors[0].pageMessage);
                }
                if(errors || errors[0].duplicateResults){
                    console.log(' duplicate Error ', errors[0].duplicateResults);
                }
            }else{
                
            }
        });
        $A.enqueueAction(action);
     

    }    
    
})