public class CustomerInvocable {
    
    // Button -> Flow -> CustomerInvocable -> @Future(Callout=True) 
	
    @InvocableMethod(label='Get Customers')
    public static void CallAPI(List<List<Integer>> params){
        
        CustomerAPI.getCustomersByRepsonse();
    }
}

/*
FLOW
-> New -> Screen Flow -> Call Customer
-> Action -> Type -> Apex Action -> Get Customers
-> Screen Flow -> Success Message
Setup -> Flow -> (Select Flow) -> View Detail and Versions -> URL: /flow/Call_Customers

BUTTON
Setup -> Object Manager -> Contact
-> Buttons, Links and Actions -> New Button or Link 
-> Import Customers -> List Button -> URL: /flow/Call_Customers
Setup -> Object Manager -> Contact
-> List View Button Layout -> Edit -> Custom Buttons -> Selected Buttons
*/