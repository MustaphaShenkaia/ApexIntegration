public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.getCustomersByRepsonse(); 
    // request.setEndpoint() / setMethod() 
    // SF <- Container <- JSON.deserialize() <- Provider
	
    public static void getCustomersByRepsonse(){
        
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customerList.php?token=' + TOKEN);
            request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
        //-------------------------------------
        
        List<CustomerResponse> customers = CustomerResponse.parse(response.getBody());
        
        List<Contact> conList = new List<Contact>();
        
        for(CustomerResponse customer : customers){
            
            Contact con = new Contact();
            
            con.FirstName = customer.firstName;
            con.LastName = customer.lastName;
            con.Email = customer.email;
            con.Phone = customer.phone;
            
            conList.add(con);
            
        }
        insert conList;
    }
    
}