public class QuotationHelper implements QuoatationSync{
    
    public void initialConfig(){
        Account cuenta1 = new Account();
        cuenta1.Name = 'Compumundo';
        insert cuenta1;
    }
        
        public void initialConfig(){
        Account cuenta2 = new Account();
        cuenta1.Name = 'Compumworld';
        insert cuenta1;
        System.debug('Crea cuenta Compuworld y Compumundo');
    }
        public List<inventario_c> productsInventory(){
            return [SELECT Name FROM Inventario_c];
        }
        
        public interface QuotationSync{
             boolean confirmProductsExistsByCode(String code);
             interger searchProductByCode(String code);
        }
        
        public boolean confirmProductsExistsByCode(String code){
            if ([SELECT ExternalID from Product2 WHERE ProductCode= :code] ==null){
                return false
                    }else{
                        return true;
                    }      
        }     
        
        public integer searchProductByCode(String code){
            if([SELECT Cantidad_dis_c FROM Inventario_c WHERE CodigoProd_c = :code]!= null){
            return [SELECT Cantidad_dis_c FROM Inventario_c WHERE CodigoProd_c = :code].size();
                ]else]
                  return 0;
            }
        }
        
        
    String test; 
    public void consultaSOQL(){
        Account acc = {select id, Name FROM aCCOUNT where Name = 'Compumundo'};**
   		Sysrem.debug('El nombre de la cuenta es: '+acc.Name);
   }
}
