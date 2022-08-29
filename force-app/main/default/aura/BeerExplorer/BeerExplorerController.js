({
	handle : function(component, event, helper) 
    {
       
        var action = component.get("c.beerlist");
        
        var searchResult = event.getParam("beersearch");
        
        console.log(searchResult);
        
        action.setParams(
            
            			{ 
                            
                            a:searchResult
             
          			    });
        action.setCallback (this,
                            
                            function(response)
                            {
                                var responsevalue  =  response.getReturnValue(); 
                                console.log(responsevalue)
                                component.set('v.beerList',responsevalue);
                                
                                
                            }
                            
                           );
        
        $A.enqueueAction(action);
		
	},
    cart : function(component, event, helper) 
    {
        alert("Handled")
    }
})