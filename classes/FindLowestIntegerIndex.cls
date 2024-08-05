/**
* @Author: Satish Inuganti
* @Description: Find lowest non-negative integer in a array.Check apex class FindLowestPositiveIntegerIndex which return Index and Element value in a Map.
* @Ex: For example, given [9, 11, 8, 5, 7, 10], you should return 5, since 3 is the index of element 5 in the list.
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class FindLowestIntegerIndex {
    public static Integer findLowestPostiveInteger(List<Integer> numList){
        Integer tempNum = numList[0];
        Integer tempIndex = 0;
        Integer inputListSize = numList.size();
        for(Integer i=1;i<inputListSize;i++){
            if(tempNum > numList[i]){
                tempNum = numList[i];
                tempIndex = i;
            }
        }
        return tempIndex;
    }
}