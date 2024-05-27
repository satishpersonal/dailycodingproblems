/**
* @Author: Satish Inuganti
* @Description:Given an array of integers and a number k, where 1 <= k <= length of the array, compute the maximum values of each subarray of length k.
* For example, given array = [10, 5, 2, 7, 8, 7] and k = 3, we should get: [10, 7, 8, 8].
* @TestClass: DailyCodingProblem3Test.apxc
* */
public class DailyCodingProblem3{
    public static List<Integer> doBuild(List<Integer> inputElementList, Integer k){
        List<Integer> output = new List<Integer>();
        If(!inputElementList.isEmpty() && k > 1){
            for(Integer i=0;k<=inputElementList.size();i++){
                System.debug(inputElementList);
                List<Integer>  splicedList = new List<Integer>();
                for(Integer j=0;j<k;j++){
                    System.debug(inputElementList[j]);
                    splicedList.add(inputElementList[j]);
                }
                splicedList.sort();
                System.debug(splicedList);
                output.add(splicedList[k-1]);
                inputElementList.remove(0);
            }
            System.debug(output);
            return output;
        }else{
            throw new HandledException('Input array shoudn\'t be empty (or) k should be a positive integer with value >1');
        }
    }
}