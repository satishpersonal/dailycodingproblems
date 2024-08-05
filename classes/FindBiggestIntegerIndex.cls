/**
* @Author: Satish Inuganti
* @Description: Find biggest non-negative integer index in a array.
* @Ex: For example, given [9, 11, 8, 5, 7, 10], you should return 1, since 1 is the index of element 11 in the list.
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class FindBiggestIntegerIndex {
    public static Integer findBiggestPostiveInteger(List<Integer> numList){
        Integer tempNum = numList[0];
        Integer tempIndex = 0;
        Integer inputListSize = numList.size();
        //start comparision with index 1 as 0 is already assigned, imagine 0th index element is smallest.
        for(Integer i=1;i<inputListSize;i++){
            if(tempNum < numList[i]){
                tempNum = numList[i];
                tempIndex = i;
            }
        }
        return tempIndex;
    }
}