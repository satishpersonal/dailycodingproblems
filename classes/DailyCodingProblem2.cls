/**
* @Author: Satish Inuganti
* @Description:Given an array of integers, return a new array such that each element at 
* index [i] of the new array is the product of all the numbers in the original array except the one at [i].
* For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
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