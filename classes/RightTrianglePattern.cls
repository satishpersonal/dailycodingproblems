/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request & Comment Update in README.md File. Happy Learning !
**/
public class RightTrianglePattern {
    public static void createPattern(Integer inputNumber){
        for(Integer i=1;i<=inputNumber;i++){
            String pattern='';
            for(Integer j=1;j<=i;j++){
                pattern = pattern+'  '+'*';
            }
            System.debug(pattern);
        }
    }
}