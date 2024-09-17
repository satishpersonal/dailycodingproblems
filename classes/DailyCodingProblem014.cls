/**
 * @Author       : Satish Inuganti
 * @Description  : Given a string, find the longest palindromic contiguous substring. If there are more than one with the maximum length, return any one.
 * @Ex:          : For example, the longest palindromic substring of "aabcdcb" is "bcdcb". The longest palindromic substring of "bananas" is "anana".
 * @Known Bugs   : NA
**/

public class DailyCodingProblem014 {
    public static integer getMaximumSumOfContigiousArray(List<Integer> inputList){
        integer inputListSize = inputList.size();
        integer globalMax = inputList[0];
        integer currentMax = inputList[0];
        for(Integer i=0; i<inputListSize; i++){
            currentMax = Math.max(inputList[i], currentMax+inputList[i]);
            globalMax = Math.max(currentMax, globalMax);
        }
        return globalMax;
    }     
}