({
    cart : function(component, event, helper) 
    {
        var params = event.getParam('cartinforecord');
        if(params){
            var beerRecord = params.beerRecord;
            var existingRecords = component.get('v.cartList');
            if(existingRecords){
                existingRecords.push(beerRecord);
                component.set('v.cartList', existingRecords);
            } else {
                existingRecords = [];
                existingRecords.push(beerRecord);
                component.set('v.cartList', existingRecords);
            }
            var resultsToast = $A.get("e.force:showToast"); 
            resultsToast.setParams({ "title": "Added to Cart", "message":params.Name + " has been successfully added to cart.", "type" : "success" });
            resultsToast.fire();
    }
}
 })