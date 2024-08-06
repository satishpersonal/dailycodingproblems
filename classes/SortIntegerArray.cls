/**
* @Author: Satish Inuganti
* @Description:Sort non-negative integers
* @Ex: For example, given [6, 1, 3, 3, 3, 6, 6], return [1,3,3,3,6,6,6]
* */
public class SortIntegerArray {
    public static List<Integer> sort(List<Integer> inputList){
        List<Integer> inputCloneList = inputList.clone();
        Integer inputListSize = inputCloneList.size();
        If(inputListSize ==1){
            return inputList;
        }else{
            List<Integer> sortedInput = new List<Integer>();
            Integer tempVal;
            Integer tempValIndex;
            for(Integer i=0;i<inputListSize;i++){
                tempVal = inputCloneList.get(0);
                for(Integer j=1;j<inputCloneList.size();j++){
                    tempVal = (tempVal > inputCloneList.get(j)) ? inputCloneList.get(j) : tempVal;
                }
                sortedInput.add(tempVal);
                tempValIndex = inputCloneList.indexOf(tempVal);
                inputCloneList.remove(tempValIndex);
            }
            return sortedInput;
        }
    }
}