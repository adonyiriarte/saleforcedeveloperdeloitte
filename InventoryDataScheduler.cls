public class InventoryDataScheduler  implements Schedulable, Queueable {

    public void execute(SchedulableContext ctx) {
        ExternalLegacyConnection();
    }
    
    public void execute(QueueableContext qt) {
        ExternalLegacyConnection();
    }
    //@future(callout=true)
    public static void ExternalLegacyConnection(){
        Http http= new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://64bjp0q5wg.execute-api.us-east-2.amazonaws.com/Implement/');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode() == 200){
            
        }
        
    }//
}
}