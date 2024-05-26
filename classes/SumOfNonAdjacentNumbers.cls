/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request.
**/
public class SumOfNonAdjacentNumbers {
    public static Integer getSum(List<Integer> numList){
        Integer numListSize = numList.size();
        Integer evenListIndexSum =0;
        Integer oddListIndexSum =0;
        for(Integer i=0;i<numListSize;i++){
            Integer remainder = Math.mod(i, 2);
            If(remainder == 0){
                evenListIndexSum = evenListIndexSum+numList[i]*1;
            }
            else{
                oddListIndexSum = oddListIndexSum+numList[i]*1;
            }
        }
        If(evenListIndexSum > oddListIndexSum){
            return evenListIndexSum;
        }else{
            return oddListIndexSum;
        }
    }
}