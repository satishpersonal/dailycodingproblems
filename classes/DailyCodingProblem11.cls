/**
* @Author: Satish Inuganti
* @Description:Compute the running median of a sequence of numbers. That is, given a stream of numbers, print out the median of the list so far on each new element.
Recall that the median of an even-numbered list is the average of the two middle numbers.
that calculates the maximum profit you could have made from buying and selling that stock once. You must buy before you can sell it.
* @Ex: For example, given the sequence [2, 1, 5, 7, 2, 0, 5], your algorithm should print out [2,1.5,2,3.5,2,2,2]
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class DailyCodingProblem11 {
    public static List<Double> findRunningMedianSequence(List<Integer> inputList){
        List<Double> outputList = new List<Double>();
        List<Integer> temporaryList = new List<Integer>();
        Integer inputListSize = inputList.size();
        for(Integer i=0;i<inputListSize;i++){
            temporaryList.add(inputList[i]);
            List<Integer> sortedList = SortIntegerArray.sort(temporaryList);
            If(i==0){
                outputList.add(inputList[i]);
            }else If(Math.mod(i+1,2) == 0){
                Double evenMedian = findEvenMedian(sortedList);
                outputList.add(evenMedian);
            }else{
                Double oddMedian = findOddMedian(sortedList);
                outputList.add(oddMedian);
            }
        }
        return outputList;
    }
    public static Double findEvenMedian(List<Integer> inputList){
        Integer middleIndex = (0+inputList.size()-1)/2;
        return (Double.valueOf((inputList.get(middleIndex) + inputList.get(middleIndex+1)))/2);
    }
    public static Double findOddMedian(List<Integer> inputList){
        Integer middleIndex = (0+inputList.size()-1)/2;
        return inputList[middleIndex];
    }
}