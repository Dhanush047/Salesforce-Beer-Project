@istest
public class testingmethod 
{
    @istest
    public static void meth1()
    {
        Integer res = TestingClass.add(10, 2);
        system.assertEquals(12,res);
    }
    @istest
    public static void meth2()
    {
        Integer res = TestingClass.sub(10, 2);
        system.assertEquals(8,res);
    }
    @istest
    public static void meth3()
    {
        Integer res = TestingClass.mult(5, 2);
        system.assertEquals(10,res);
    }
    @istest
    public static void meth4()
    {
        Integer res = TestingClass.divide(8, 2);
        system.assertEquals(4,res);
    }

}