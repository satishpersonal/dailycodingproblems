/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request & Comment Update in README.md File. Happy Learning !
**/
public class Leapyear {
    public static string isLeapyear(Integer year){
        //check if evenly divisble by 4
        If(Math.mod(year, 4) != 0){
            return year+' is not a leap year';
            //check if evenly divisble by 100
        }else if(Math.mod(year, 100) != 0){
            return year+' is a leap year';
            //check if evenly divisble by 400
        }else if(Math.mod(year, 400) != 0){
            return year+' is not a leap year';
            // else return it is a leap year
        }else{
            return year+' is a leap year';
        }
    }
}