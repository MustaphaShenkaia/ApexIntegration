public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.deleteCustomer(); 
    // request.setEndpoint() / setMethod() 
	
  public static void deleteCustomer(){
        
        Http http = new Http();
      
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customer.php?id=313&token=' + TOKEN);
            request.setMethod('DELETE');
      
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
}