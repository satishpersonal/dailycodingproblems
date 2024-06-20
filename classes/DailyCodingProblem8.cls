/**
* @Author: Satish Inuganti
* @Description:Given an array of integers where every integer occurs three times except for one integer, which only occurs once, find and return the non-duplicated integer.
* @Ex: For example, given [6, 1, 3, 3, 3, 6, 6], return 1. Given [13, 19, 13, 13], return 19.
* @Bug: Doesn't support O(1) space in time.
* */
public class DailyCodingProblem8 {
    public static Integer findLeastOddOne(List<Integer> inputList){
        List<Integer> sortedInput = sortIntegerList(inputList);
        system.debug(sortedInput);
        Integer nonDuplicatedInteger;
        for(Integer i=0;i<sortedInput.size();i++){
            If((sortedInput.get(i) == sortedInput.get(i+1)) &&  (sortedInput.get(i+1) == sortedInput.get(i+2))){
              // Do nothing
            }else if((sortedInput.get(i) != sortedInput.get(i+1)) && (sortedInput.get(i+1) == sortedInput.get(i+2))) {
                nonDuplicatedInteger = sortedInput.get(i);
                break;
            }else if((sortedInput.get(i) == sortedInput.get(i+1)) && (sortedInput.get(i+1) != sortedInput.get(i+2))){
                nonDuplicatedInteger = sortedInput.get(i+2);
                break;
            }
        }
        return nonDuplicatedInteger;
    }
    public static List<Integer> sortIntegerList(List<Integer> inputList){
        Integer inputListSize = inputList.size();
        List<Integer> sortedInput = new List<Integer>();
        Integer tempVal;
        Integer tempValIndex;
        for(Integer i=0;i<inputListSize;i++){
            tempVal = inputList.get(0);
            for(Integer j=1;j<inputList.size();j++){
                tempVal = (tempVal > inputList.get(j)) ? inputList.get(j) : tempVal;
            }
            sortedInput.add(tempVal);
            tempValIndex = inputList.indexOf(tempVal);
            inputList.remove(tempValIndex);
        }
        return sortedInput;
    }
}