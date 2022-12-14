({
    doInit : function(component, event, helper)
    {
        var pageReference = component.get('v.pageReference');
        var state = pageReference.state;
        
        console.log(' cartId ' ,state.cartId__c);
        component.set('v.cartId',state.cartId__c );
    },

doInit2 : function(component, event, helper) 
{
    component.find('recordCreator').getNewRecord(
        'Address_Book__c',
        null,
        false,
        $A.getCallback(function(){
            var record = component.get('v.record');
            var error = component.get('v.recordError');
            if(error || (record === null)){
                console.log(' Error while creating the template ',error);
            }else{
                console.log(' Successfuly Created');
                //alert('Templated Initiated');
            }
        })
    );
   
    var pageReference = component.get('v.pageReference');
    
    var state = pageReference.state;
    if(state.cartId__c){
        console.log(' cartId ' ,state.cartId__c);
        component.set('v.cartId',state.cartId__c );
        var action = component.get('c.getCartItems');
        action.setParams({
            'CartId' : state.cartId__c
        });
        action.setCallback(this, function(response)
                           {
                               var stateResponse = response.getState();
                               if(stateResponse === 'SUCCESS' || stateResponse === 'DRAFT')
                               {
                             
                                   var ResultData =response.getReturnValue();
                                   console.log("ResultData value - ", ResultData)
                                  // console.log("Return length - ", ResultData.length)
                                  // component.set('v.cartItemList', ResultData);
                                  var items = [];
                                  var subTotal;
                                  for(var key in ResultData){
          
                                      items.push(ResultData[key]);
          
                                      if(subTotal)
                                          subTotal = subTotal + ResultData[key].Total_Amount__c
                                      else
                                          subTotal = ResultData[key].Total_Amount__c
                                  }
                                   component.set('v.subTotal', subTotal);
          
                                   
                                   component.set('v.cartItemList', items);
                                   console.log( "items" , items);
                                
                                   
                               }
                               else if(stateResponse === 'INCOMPLETE')
                               {
                                   console.log('User is offline System does not support offline');
                               }
                                   else if(stateResponse ==='ERROR')
                                   {
                                       var errors = response.getError();
                                       
                                       if(errors || errors[0].pageMessage)
                                       {
                                           console.log(' page Error ', errors[0].pageMessage);
                                       }
                                       if(errors || errors[0].duplicateResults){
                                           console.log(' duplicate Error ', errors[0].duplicateResults);
                                       }
                                   }
                                       else{
                                           
                                       }
                           });
        $A.enqueueAction(action);
    } 
    
},
homePage : function(component, event, helper) 
{
    var pageReference = component.find("navService");
        
        var pageReferenceNav = {    
            "type": "standard__navItemPage",
            "attributes": {
                "apiName": "Beer_World"    
            }
        };
        pageReference.navigate(pageReferenceNav);
},
applyCoupon :  function(component, event, helper) 
{
    component.set('v.isCouponAplied', true);

},
doApplyCoupon : function(component, event, helper) 
    {
        var CouponNo = component.find('CouponNo').get('v.value');
        var cartId = component.get('v.cartId');
       // alert(CouponNo);
      //  alert(cartId);
        if(CouponNo){
            var action = component.get('c.checkCoupon');
            action.setParams({
                'Name' : CouponNo,
                'CartId' : cartId
            });
            action.setCallback(this, function(response){
                var state = response.getState();
               // alert(state);
                if(state === 'SUCCESS' || state ==='DRAFT'){
                    var resultData = response.getReturnValue();
                    if(resultData){
                        component.set('v.discountAmount', resultData);
                        console.log(resultData);
                        component.set('v.errorDiscount',null);
                        component.set('v.isCouponSuccess', true);
                        var discount = resultData;
                        var subtotal = component.get('v.subTotal') - discount;
                        component.set('v.subTotal',subtotal);
                    }else{
                        component.set('v.errorDiscount','Coupon is not Valid OR Expired.');
                        component.set('v.discountAmount',null);
                         component.set('v.isCouponSuccess', false);
                    }
                }
            });
            $A.enqueueAction(action);
        }else{
            alert('Please Enter your Coupon No');
        }
    },
    doCheckout : function(component, event, helper) 
    {
        component.set('v.isCheckout', true);
    },
    doSaveAddress :  function(component, event, helper) 
    {

        var isValidAddress = helper.validate(component, event, helper);
        //alert(isValidAddress);
        if(isValidAddress){
            var userId = $A.get("$SObjectType.CurrentUser.Id");
            component.set('v.addressBook.User__c',userId);
            component.find('recordCreator').saveRecord(function(saveResult){
                if(saveResult.state === 'SUCCESS' || saveResult.state === 'DRAFT'){
                    var showToast = $A.get('e.force:showToast');
                    showToast.setParams({
                        "title" : "Record Saved",
                        "type" : "Success",
                        "message" : "Addressbook has been Save  "+saveResult.recordId
                    });
                    showToast.fire();
                    var addList = [];
                    var addrList = component.get('v.addressList');
                    if(addrList){
                        addrList.push(component.get('v.addressBook'));
                        component.set('v.addressList' , addrList);
                    }else{
                        addList.push(component.get('v.addressBook'));
                        component.set('v.addressList' , addList); 
                    }
                 //   component.set('v.isNewAddress', false);
                } else if(saveResult.state === 'INCOMPLETE'){
                    
                }else if(saveResult.state === 'ERROR'){
                    
                }else{
                    
                }
            });
        }
    },
    getAddress :  function(component, event, helper)
    {

        helper.getaddr(component, event, helper);
    },
    onSelect : function(component, event, helper)
    {
        var selected = event.getSource().get("v.text");
        var allAddress = component.get('v.addressList');
        var selecedAddress = allAddress[selected];
        //   console.log('selecedAddress ', selecedAddress);
        component.set('v.selectedAddress', selecedAddress);
        console.log(' selected address ==== ', component.get('v.selectedAddress'));
    },
    placeOrder : function(component, event, helper)
    {
        var selecedAdd = component.get('v.selectedAddress');
        console.log("selected Add ",selecedAdd.Id);
        var userId = $A.get("$SObjectType.CurrentUser.Id");
        console.log("user Id = ",userId);
        console.log("Cart Id",component.get('v.cartId'));
        console.log("Subtotal = ",component.get('v.subTotal'));
        var action = component.get('c.createorder');
        action.setParams({
            'CartId' : component.get('v.cartId'),
            'AddressId': selecedAdd.Id,
            'UserId' : userId,
            'SubTotal' : component.get('v.subTotal')
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === 'SUCCESS' || state === 'DRAFT'){
                
                var showToast = $A.get('e.force:showToast');
                var resustData = response.getReturnValue();
                showToast.setParams({
                    "title" : "Record Saved",
                    "type" : "success",
                    "message" : "Your Order Has been Successfully Placed." +
                    "Your tracking Order no is "+resustData.split('####')[0]
                });
                showToast.fire();
                $A.get('e.force:refreshView').fire(); 
                    var pageReference = component.find("navService");
                    var pageReferenceNav = {    
                        "type": "standard__recordPage",
                        "attributes": {
                            "recordId":resustData ,
                            "objectApiName": "Order__c",
                            "actionName": "view"   
                        }
                    };
                    pageReference.navigate(pageReferenceNav, true);
            } else if(state === 'INCOMPLETE'){
                console.log('User is offline and System does not support offline!.');
            }else if(state === 'ERROR'){
                var errors = response.getError();
                console.log('Error Occured ', errors);
            }else{
                
            }
        });
        $A.enqueueAction(action)
    },
    reInit :  function(component, event, helper) 
    {
         $A.get('e.force:refreshView').fire();
    },
    addNewAddress : function(component, event, helper){
        
        component.set('v.isNewAddress', true);
    }
})