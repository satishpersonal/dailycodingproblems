/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request & Comment Update in README.md File. Happy Learning !
**/
public class Fibonacci {
    public static void printFibonacci(Integer howManyNumbers){
        Integer firstNumber = 0;
        Integer secondNumber = 1;
        Integer current;
        System.debug(firstNumber);
        System.debug(secondNumber);
        Integer currentNumber=0;
        while(currentNumber<howManyNumbers-2){
            current = firstNumber+secondNumber; // 1 //2 //3
            System.debug(current);
            firstNumber = secondNumber; // 1 //1 //2
            secondNumber = current; // 1 //2 //3
            currentNumber++;
        }
    }
}