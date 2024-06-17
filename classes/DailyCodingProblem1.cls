/**
* @Author: Satish Inuganti
* @Description:The edit distance between two strings refers to the minimum number of character insertions, deletions, and substitutions required to change one string to the other.
* @Ex: For example, the edit distance between “kitten” and “sitting” is three: substitute the “k” for “s”, substitute the “e” for “i”, and append a “g”.
* */
public class DailyCodingProblem1 {
    public static Integer findEditDistance(String firstString, String secondString){
        Integer editDistance = 0;
        Integer firstStringLength = firstString.length();
        Integer secondStringLength = secondString.Length();
        Integer difference = (firstStringLength > secondStringLength) ? firstStringLength - secondStringLength : secondStringLength - firstStringLength;
        If((String.isNotBlank(firstString) || String.isNotEmpty(firstString)) && (String.isNotBlank(secondString) || String.isNotEmpty(secondString))){
            Integer noOfIterations = (firstStringLength >= secondStringLength) ? secondStringLength : firstStringLength;
            for(Integer i=0; i<noOfIterations-1;i++){
                editDistance = firstString.charAt(i) == secondString.charAt(i) ? editDistance : editDistance+1;
            }
            return editDistance+difference;
        }else{
            throw new HandledException('Input strings cannot be blank!!!!');
        }
    }
    //Apex also has inbuilt method getLevenshteinDistance which can be used to calculate editDistance between 2 strings.
    //Documentation: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_getLevenshteinDistance
    public static Integer findEditDistanceByApexMethod(String firstString, String secondString){
        return firstString.getLevenshteinDistance(secondString);
    }
}