public class TokenUtility {
	
    public static String getTokenByLabel(String label){
        
        TokennList__mdt mytoken = TokennList__mdt.getInstance(label);        
        
        return mytoken.Token__c;        
        // SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r
    }
}
/*
Setup -> Custom Code -> Custom Metadata Types

New Custom Metadata Type -> TokennList
Custom Fields -> New -> Text -> Token
Manage TokenList -> New -> ApiToken

Custom Metadata Types API Name ->  TokennList__mdt
Custom Fields API Name ->  Token__c
Custom Fields Manage Token List Label ->  ApiToken

ANONYMOUS WINDOWS
String token = TokenUtility.getTokenByLabel('ApiToken'); 
System.debug(token);
*/