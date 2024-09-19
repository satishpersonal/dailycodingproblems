/**
 * @Author       : Satish Inuganti
 * @Description  : Given a string, find the longest palindromic contiguous substring. If there are more than one with the maximum length, return any one.
 * @Ex:          : For example, the longest palindromic substring of "aabcdcb" is "bcdcb". The longest palindromic substring of "bananas" is "anana".
 * @Known Bugs   : NA
**/

public class DailyCodingProblem014 {
    public static String findLongestPalindromicSubString(String inputText){
        String longestPalindromicSubString ='';
        List<String> possibleSubStringCombinations = new List<String>();
        List<String> palindromicSubStrings = new List<String>();
        for(Integer i = 0; i < inputText.length(); i++){
            //To be a palindromic string min length required is 3 chars.
            //Hence we start with 3 chars from 1st character and then collect all these combinations.
            //Send later to a reusable class PalindromeDetector to check palindrome or not.
            for(Integer j = i+3; j <= inputText.length(); j++){
                String substring = inputText.substring(i, j);
                possibleSubStringCombinations.add(substring);
            }
        }
        for(String subString : possibleSubStringCombinations){
            PalindromeDetector detector = new PalindromeDetector(subString);
            if(detector.isPalindrome){
                palindromicSubStrings.add(subString);
                longestPalindromicSubString = (subString.length()>longestPalindromicSubString.length())? subString : longestPalindromicSubString;
            }
        }
        If(palindromicSubStrings.isEmpty()){
            throw new HandledException('Goodluck, try harder! I\'m smart enough to catch you!');
        }
        else{
            return longestPalindromicSubString;
        }   
    }  
}