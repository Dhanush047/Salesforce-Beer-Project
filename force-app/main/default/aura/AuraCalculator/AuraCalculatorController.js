({
	addClick : function(component, event, helper)
    {
        console.log(component.get("v.num1"));
        var res = (parseInt(component.get("v.num1")) + parseInt(component.get("v.num2")));
        component.set("v.result", res)
	},
    subClick : function(component, event, helper)
    {
		console.log(component.get("v.num1"));
        var res = (parseInt(component.get("v.num1")) - parseInt(component.get("v.num2")));
        component.set("v.result", res)
	},
    multClick : function(component, event, helper)
    {
		console.log(component.get("v.num1"));
        var res = (parseInt(component.get("v.num1")) * parseInt(component.get("v.num2")));
        component.set("v.result", res)
	},
    divClick : function(component, event, helper)
    {
		console.log(component.get("v.num1"));
        var res = (parseInt(component.get("v.num1")) / parseInt(component.get("v.num2")));
        component.set("v.result", res)
	}
    
})