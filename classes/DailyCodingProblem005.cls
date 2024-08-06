/**
* @Author: Satish Inuganti
* @Description:Implement regular expression matching with the following special characters:
*			. (period) which matches any single character
* 			(asterisk) which matches zero or more of the preceding element
*@E.g. For example, given the regular expression "ra." and the string "ray", your function should return true. 
*			The same regular expression on the string "raymond" should return false
*			Apex Pattern Class can be used for this requirement.
*@Documentation: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_classes_pattern_and_matcher_pattern_methods.htm
* */
public class DailyCodingProblem005 {
    public static boolean matchRegEx(String inputText, String regExPattern){
        boolean isRegExPatternAMatch = False;
        return Pattern.matches(regExPattern, inputText);
    }
}