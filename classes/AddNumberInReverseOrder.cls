/**
* @Author: Satish Inuganti
* @Description: Sum of the list of non-negative integers in reverse order.
* @Ex:
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class AddNumberInReverseOrder {
    public static void getTotal(List<Integer> firstNumList, List<Integer> secondNumList){
        String firstNumber;
        String secondNumber;
        Integer sumOfNumbers;
        If(!firstNumList.isEmpty()){
            for(Integer i=firstNumList.size()-1;i>=0;i--){
                if(firstNumber!=NULL){
                    firstNumber = firstNumber+String.valueOf(firstNumList[i]);
                }
                else{
                    firstNumber = String.valueOf(firstNumList[i]);
                }
            }
        }
        else{
            firstNumber = String.valueOf(0);
        }
        If(!secondNumList.isEmpty()){
            for(Integer i=secondNumList.size()-1;i>=0;i--){
                if(secondNumber!=NULL){
                    secondNumber = secondNumber+String.valueOf(secondNumList[i]);
                }
                else{
                    secondNumber = String.valueOf(secondNumList[i]);
                }
            }
        }
        else{
            secondNumber = String.valueOf(0);
        }
        sumOfNumbers = Integer.valueOf(firstNumber)+Integer.valueOf(secondNumber);
        System.debug('Sum of Number is '+sumOfNumbers);
    }
}