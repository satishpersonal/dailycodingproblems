/**
 * @Author       : Satish Inuganti
 * @Description  : Apex Class to check if input string is a palindrome or not?
 * @Ex:          : 
 * @Known Bugs   : 09-17-2024
**/
public class PalindromeDetector {
    public boolean isPalindrome = false;
    /**
    * @description : apex method to check if input string is a palindrome string or not?
    * @author Satish Inuganti | 09-17-2024 
    * @param inputString 
    * @return boolean 
    **/
    public PalindromeDetector(String inputString){
        String reversedString = '';
        Integer inputStringLength = inputString.length();
        //To be a palindromic string min length required is 3 chars.
        If(inputStringLength <=2){
            throw new HandledException('Goodluck! I\'m smart enough to catch you!!!!');
        }else{
            for(Integer i = inputStringLength - 1; i >= 0; i--){
                reversedString += inputString.substring(i, i + 1);
                isPalindrome = inputString.equals(reversedString) ? true : false;
            }
        }
    }   
}