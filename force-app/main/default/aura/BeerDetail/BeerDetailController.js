({
	handleClick : function(component, event, helper)
    {
        var pageReference = component.find("navService");
        
        var ID = component.get('v.beerId');
        
        
        
        var pageReferenceNav = {    
            "type": "standard__component",
            "attributes": {
                "componentName": "c__CreateBeerOrder"    
            },    
            state: {
                c__beerId : ID
                
            }
        };
        pageReference.navigate(pageReferenceNav);
		
	}
})