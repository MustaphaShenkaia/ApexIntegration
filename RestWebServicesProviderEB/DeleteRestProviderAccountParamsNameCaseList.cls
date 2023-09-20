@RestResource(urlMapping='/Account/*')
global class RestCaseController {
    
    	// DELETE 
        // /services/apexrest/Account?AcName=Acc+Trigger+5-5
        // 

    @HTTPDelete
    global static List<Case> deleteRelatedCases(){

        String AccountName = RestContext.request.params.get('AcName');
        
        Account ac = [SELECT Id, Name FROM Account WHERE Name =:AccountName];
        
        List<Case> relatedCases =[SELECT Id, Subject, Status FROM Case
                                  						WHERE  AccountId=:ac.Id];
        
        delete relatedCases;
        
        return relatedCases;
        
    }
}
