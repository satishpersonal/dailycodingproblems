/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request & Comment Update in README.md File. Happy Learning !
**/
public class FizzBuzz {
    public static void getFizzBuzz(Integer startNumber, Integer endNumber, Integer firstFactor, Integer secondFactor){
        do{
            if(Math.mod(startNumber, firstFactor)==0 && Math.mod(startNumber, secondFactor)==0){
                System.debug('fizzbuzz');
            }else if(Math.mod(startNumber, firstFactor)==0){
                System.debug('fizz');
            }else if(Math.mod(startNumber, secondFactor)==0){
                System.debug('buzz');
            }else{
                System.debug(startNumber);
            }
            startNumber++;
        }while(startNumber<=endNumber);
    }
}