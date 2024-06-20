/**
* @Author: Satish Inuganti
* @Description:Sort non-negative integers
* @Ex: For example, given [6, 1, 3, 3, 3, 6, 6], return [1,3,3,3,6,6,6]
* */
public class SortInteger {
    public static List<Integer> sort(List<Integer> inputList){
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