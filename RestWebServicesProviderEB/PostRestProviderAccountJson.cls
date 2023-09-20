@RestResource(urlMapping='/Account/*')
global class RestCaseController {
    
    // POST 
    // /services/apexrest/Account
    // { "acName":"Sample Acc", "rating":"Cold" }
    
    @HTTPPost
    global static String createNewAccount(String acName, String rating){
        
        Account ac = new Account();
            ac.Name=acName;
        	ac.Rating=rating;
            insert ac;
       	
        return 'New Account Created';
        
    }
}
