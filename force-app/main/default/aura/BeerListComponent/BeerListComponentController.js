({
	Redirect : function(component, event, helper) 
    {
		var eventSource = event.getSource();
        
        var beerObj = eventSource.get('v.name');
        
        var beerName = eventSource.get('v.value');
        
        console.log('beerName ', beerName);
        
        component.set('v.beerId', beerObj);
        // <c:BeerDetail beerId="{!v.beerId}" />
        //createComponent(String type, Object attributes, function callback)
        $A.createComponent(
            "c:BeerDetail",
            {
                'beerId':beerObj
            },
            function(beerDetails, status, errorMessage)
            {
               
                if (status === "SUCCESS")
                {
                    component.find("overlayLib").showCustomModal
                    ({
                    header: "BEER WORLD",
                    body: beerDetails,
                    
                    
                    
                    closeCallback: function() 
                    {
                        
                    }
                });
                   
                }
            }
        )
        
    },
    AddToCart : function(component, event, helper) 
    {  
       /*alert( " Add to Cart ");
        console.log("Alert")*/
        var eventSource = event.getSource();
        var index = eventSource.get('v.value');
        console.log(index)
        var selectedBeerData = component.get('v.Beerrecordlist')[index];
        console.log("Selected Beer Id = ",selectedBeerData.Id)
        console.log("Selected Beer Name = ",selectedBeerData.Name)
        console.log("Selected Beer Price = ",selectedBeerData.Price__c)
        var appEvent = $A.get("e.c:CartInfoEvent");
        appEvent.setParams({
            cartinforecord : selectedBeerData
                            });
        appEvent.fire();
           
    }
})