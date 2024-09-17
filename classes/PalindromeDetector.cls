/**
 * @Author       : Satish Inuganti
 * @Description  : Apex Class to check if input string is a palindrome or not?
 * @Ex:          : 
 * @Known Bugs   : 09-17-2024
**/
public with sharing class PalindromeDetector {
    /**
    * @description : apex method to check if input string is a palindrome string or not?
    * @author Satish Inuganti | 09-17-2024 
    * @param inputString 
    * @return boolean 
    **/
    public boolean isPalindrome(String inputString){
        String reversedString = '';
        Integer inputStringLength = inputString.length();
        for(Integer i = inputStringLength - 1; i >= 0; i--){
            reversedString += inputString.substring(i, i + 1);
        }
        return inputString.equals(reversedString);
    }
}