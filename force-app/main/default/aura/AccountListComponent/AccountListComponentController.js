({
	handleClick : function(component, event, helper) {
        var action = component.get("c.acclist");
        var datafetcher = component.get("v.search");
        console.log(datafetcher);
        action.setParams(
            
            			{ 
                            
                            a:datafetcher
             
          			    });
        action.setCallback (this,
                            
                            function(response)
                            {
                                var responsevalue  =  response.getReturnValue(); 
                                
                                component.set('v.acclist',responsevalue);
                                
                                
                            }
                            
                           );
        
        $A.enqueueAction(action);
		
	}
})