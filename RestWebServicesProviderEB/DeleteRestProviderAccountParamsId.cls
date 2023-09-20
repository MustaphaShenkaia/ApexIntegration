@RestResource(urlMapping='/Account/*')
global class RestCaseController {
    
   	// DELETE 
    // /services/apexrest/Account?acId=0018d00000kBeYRAA0
    // 


    @HTTPDelete
    global static String deleteAccount(){
        
        String acId = RestContext.request.params.get('acId'); 
	
        Account acc = [SELECT Id FROM Account WHERE Id = :acId]; 
        
        delete acc; 
        
        return 'Account has been deleted'; 
      
    }
}
