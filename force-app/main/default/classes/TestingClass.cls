public class TestingClass 
{
    public static integer add(Integer a,Integer b)
    {
        Integer add = a + b;
        system.debug('VALUE IS : ' +add);
        return add;
    }
    public static integer sub(Integer a,Integer b)
    {
        Integer sub = a - b;
        system.debug('VALUE IS : ' +sub);
        return sub;
    }
    public static integer mult(Integer a,Integer b)
    {
        Integer mult = a * b;
        system.debug('VALUE IS : ' +mult);
        return mult;
    }
    public static integer divide(Integer a,Integer b)
    {
        Integer divide = a / b;
        system.debug('VALUE IS : ' +divide);
        return divide;
    }

}