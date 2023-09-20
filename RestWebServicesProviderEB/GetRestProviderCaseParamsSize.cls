@RestResource(urlMapping='/FieldCase/*')
global class RestCaseController {
	
    @HTTPGet
    global static Integer numberOfCases() {
        
        // /services/apexrest/FieldCase?AccountName=GenePoint&Rating=Hot
        String AccountName = RestContext.request.params.get('AccountName'); 
        String AccountRating = RestContext.request.params.get('Rating'); 
        
        Account acc = [SELECT Id, Name, Rating FROM Account 
						WHERE Name = :AccountName AND Rating = :AccountRating LIMIT 1]; 
        			 
        List<Case> relatedCases = [SELECT Id, Subject, Origin FROM Case WHERE AccountId = :acc.Id]; 
        // GenePoint cases        
        
        return relatedCases.size();
    }    
}