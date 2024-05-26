/**
* @Author: Satish Inuganti
* @Description:Given an array of integers, return a new array such that each element at 
* index [i] of the new array is the product of all the numbers in the original array except the one at [i].
* @TestClass: DailyCodingProblem2Test.apxc
* */
public class DailyCodingProblem2 {
    public static List<Integer> doBuildArray(List<Integer> input ){
        List<Integer> output = new List<Integer>();
        Integer inputSize  = input.size();
        for (Integer i=0;  i < inputSize; i++) {
            List<Integer> clonedList =  input.clone();
            clonedList.set(i,1);
            Integer clonedListSize = clonedList.size();
            Integer k = 1;
            for(Integer j=0;j<clonedListSize;j++){
                k = k*clonedList[j];
            }
            output.add(k);
        }
        System.debug(output);
        return output;
    }
}