public class CustomerAPI {
    
    public static final String TOKEN = 'SSSQL8Fy7hOnH9h3yexbh8GVbERzVc1ZgrsBCgHibB6sWgh5aN8TCXa60J9klF3r'; 
    
    // CustomerAPI.deleteCustomerById('312'); 
    // request.setEndpoint() / setMethod() 
	
  public static void deleteCustomerById(String customerId){
        
        Http http = new Http();
      
        HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.pathtosalesforce.com/customer.php?id=' + customerId + '&token=' + TOKEN);
            request.setMethod('DELETE');
      
        HttpResponse response = http.send(request);
        
        System.debug(response.getStatusCode());
        System.debug(response.getStatus());
        System.debug(response.getBody());
        
    }
}