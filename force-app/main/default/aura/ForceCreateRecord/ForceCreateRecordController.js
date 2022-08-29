({
    
    CreateRecord : function (component, event, helper)
    {
        var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams
        ({
            "entityApiName": "Contact",
            "defaultFieldValues":
            {
            'AccountId' : component.get('v.recordId'),
      		}
         });
        createRecordEvent.fire();
    },
    
    EditRecord : function (component, event, helper)
    {
        var editRecordEvent = $A.get("e.force:editRecord");
 	    editRecordEvent.setParams({
        "recordId": component.get("v.recordId")
   });
    editRecordEvent.fire();
    },
    handleChange: function (cmp, event) {
        var selectedOptionValue = event.getParam("value");
        alert("Option selected with value: '" + selectedOptionValue.toString() + "'");
    }
    
})