/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request & Comment Update in README.md File. Happy Learning !
**/
public class FindLeapYears {
    public static void findLeapYears(Integer startYear, Integer endYear){
        Integer year = startYear;
        do{
            String result = Leapyear.isLeapyear(year);
            year++ ;
            System.debug(result);
        }while(year<=endYear);
    }
}