public class singlearith 
{
    public static void arithmetic()
    {
        Integer red = 400;
        Integer blue = 20;
        
        Integer sum = red + blue;
        system.debug('Sum' +sum);
        
        Integer sub = red - blue;
        system.debug('Sub' +sub);
        
        Integer multiply = red * blue;
        system.debug('Multiply' +multiply);    
        
        Integer divide = red / blue;
        system.debug('Divide' +divide);
        
        Integer modulus = math.mod(red,blue);
        system.debug('Modulus' +modulus);
        
    }   
    
}