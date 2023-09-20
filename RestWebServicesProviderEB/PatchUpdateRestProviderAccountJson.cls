

@RestResource(urlMapping='/Account/*')
global class RestCaseController {
    
   	// PATCH 
    // /services/apexrest/Account
    // { "acId":"0018d00000kBeYRAA0", "acSite":"Site has been updated", "rating":"Cold" }
    
    @HTTPPatch
    global static String createNewAccount(String acId, String acSite, String rating){
        
        
        Account ac =[SELECT Id, Name FROM Account WHERE Id =:acId];
            ac.Name = ac.Name +' updated';
            ac.Site = acSite;
            ac.Rating = rating;
            update ac;
        
        return 'Account Updated';

    }
 
}

