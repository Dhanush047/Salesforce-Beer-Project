public class cgpacalculate 
{
    public static void cgpa()
    {
        double English,Tamil,Maths,Science,Social,cgpa,cgpaper;
        English = 8.9;
        Tamil = 9.6;
        Maths = 8.1;
        Science = 9.0;
        Social = 7.3;
        
        cgpa = (English+Tamil+Maths+Science+Social)/(5.0);
        cgpaper = (Decimal)(9.5 * cgpa);
        system.debug('THE CGPA IS : ' +cgpaper);
        
        if(cgpaper > 9.0)
        {
            system.debug('CONGRATS YOUR GRADE IS A');
        }
        else if(cgpaper > 8.0 && cgpaper < 9.0)
        {
            system.debug('CONGRATS YOUR CGPA IS B');
        }
        else if(cgpaper > 7.0 && cgpaper < 8.0)
        {
            system.debug('CONGRATS YOUR CGPA IS C');
        }
        else
        {
            system.debug('PLEASE CONCENTRATE AND STUDY YOU NEED TO IMPROVE');
        }
    }

}