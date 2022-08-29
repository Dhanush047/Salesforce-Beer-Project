({
	dosearch : function(component, event, helper) 
    {
        var comEvent = component.getEvent("BeerEvent");
        
        var findInput = component.find("searchInput").get("v.value");
        
        comEvent.setParams(
            {
                beersearch:findInput
            }
        );
		comEvent.fire();
	}
})