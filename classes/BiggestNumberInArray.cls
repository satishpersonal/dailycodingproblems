/**
* @Author: Satish Inuganti
* @Description: Find biggest non-negative integer in a array.
* @Ex:
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class BiggestNumberInArray {
    public static Integer getBiggestNumber(List<Integer> numList){
        Integer arraySize = numList.size();
        Integer tempValue = numList[0];
        for(Integer i=0;i<arraySize;i++){
            if(tempValue<numList[i]){
                tempValue = numList[i];
            }
        }
        return tempValue;
    }
}