/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request & Comment Update in README.md File. Happy Learning !
**/
public class InvertTrianglePattern {
    public static void invertTrianglePattern(Integer inputNumber){
        for(Integer row = 0;row<inputNumber;row++){
            String pattern = '';
            for(Integer column = inputNumber; column>row;column--){
                pattern = pattern+'  *';
            }
            System.debug(pattern);
        }
    }
}