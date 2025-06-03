/**
* @Author       : Satish Inuganti
* @Description  : Given a list of numbers, create an algorithm that arranges them in order to form the largest possible integer. 
* @Ex:          : Given [10, 7, 76, 415], you should return 77641510.
* @Known Bugs   : NA
**/
public class DailyCodingProblem015 {
    public static Integer findLargestPossibleInteger(List<Integer> inputNumbers){
        List<Integer> possibleCombinations;
        If(!inputNumbers.isEmpty()){
            possibleCombinations = new List<Integer>();
            Integer inputSize = inputNumbers.size();
            Integer count = 0;
            do{
                possibleCombinations.add(inputNumbers.get(0));
                for(Integer j=1;j<inputSize;j++){
                    Integer possibleCombinationSize = possibleCombinations.size();
                    possibleCombinations.add(Integer.valueof(String.valueOf(possibleCombinations.get(possibleCombinationSize-1))+String.valueOf(inputNumbers.get(j))));
                }
                Integer currentNumber = inputNumbers.get(0);
                inputNumbers.remove(0);
                inputNumbers.add(currentNumber);
                count++;
            }while(count < inputSize -1);
            List<Integer> sortedInputNumbers = SortIntegerArray.sort(possibleCombinations);
            return sortedInputNumbers.get(sortedInputNumbers.size()-1);
        }else{
            throw new HandledException('Input list cannot be empty, better luck next time');
        }
    }
}