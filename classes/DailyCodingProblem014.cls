/**
 * @Author       : Satish Inuganti
 * @Description  : Given an array of numbers, find the maximum sum of any contiguous subarray of the array.
 * @Ex:          : For example, given the array [34, -50, 42, 14, -5, 86], the maximum sum would be 137, since we would take elements 42, 14, -5, and 86.
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