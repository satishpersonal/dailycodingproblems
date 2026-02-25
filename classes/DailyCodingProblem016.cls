/**
* @Author       : Satish Inuganti
* @Description  : Given an array of numbers and an index i, return the index of the nearest larger number of the number at index i, 
* 				   Where distance is measured in array indices.
* @Ex:          : For example, given [4, 1, 3, 5, 6] and index 0, you should return 3.
* @Known Bugs   : NA
**/

Public class DailyCodingProblem016 {
    Public List<Integer> inputList;
    Public Integer startIndex;
    Public DailyCodingProblem016(List<Integer> inputList, Integer startIndex){
        this.inputList = inputList;
        this.startIndex = startIndex;
        getNearestLargestIntegerNum();
    }
    Public Integer getNearestLargestIntegerNum(){
        Integer nearestLargestIntegerNumberIndex;
        Integer inputListSize = inputlist.size();
        Integer elementAtStartIndex = inputList[startIndex];
        for(Integer i=startIndex;i<inputListSize;i++){
            Integer leftElementToStartIndex = (startIndex != 0 && i > 0) ? inputList[i - 1] : null;
            Integer rightElementToStartIndex = (i + 1 < inputListSize) ? inputList[i + 1] : null;
            Boolean isLeftElementALargerPostiveInteger = leftElementToStartIndex > elementAtStartIndex;
            Boolean isRightElementALargerPostiveInteger = rightElementToStartIndex > elementAtStartIndex;
            Boolean isAnyElementLargerElement = isLeftElementALargerPostiveInteger || isRightElementALargerPostiveInteger;
            Boolean areBothElementsLargerElements = isLeftElementALargerPostiveInteger && isRightElementALargerPostiveInteger;
            if(areBothElementsLargerElements){
                nearestLargestIntegerNumberIndex = (leftElementToStartIndex > rightElementToStartIndex) ? i+1 : i-1;
                break;
            }
            else if(isAnyElementLargerElement){
                nearestLargestIntegerNumberIndex = (isLeftElementALargerPostiveInteger) ? i-1 : i+1;
                break;
            }else{
                continue;
            }
        }
        return nearestLargestIntegerNumberIndex;
    }
}