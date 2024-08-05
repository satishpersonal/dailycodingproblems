/**
* @Author: Satish Inuganti
* @Description:An sorted array of integers was rotated an unknown number of times.
* 		Given such an array, find the index of the element in the array in faster than linear time. If the element doesn't exist in the array, return null.
* @Ex: For example, given the array [13, 18, 25, 2, 8, 10] and the element 8, return 4 (the index of 8 in the array).
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class DailyCodingProblem10 {
    public static Integer findIndexOfElement(List<Integer> inputList, Integer element){
        Integer elementIndex;
        If(!inputList.isEmpty()){
            If(inputList.contains(element)){
                Integer inputListSize = inputList.size();
                Integer rightIndex = inputList.size()-1;
                Integer middleIndex = (0+rightIndex)/2;
                Integer elementAtMiddleIndex = inputList.get(middleIndex);
                If(inputList[0] < inputList[middleIndex]){
                    for(Integer i =0;i<middleIndex;i++){
                        elementIndex = (inputList[i] == element) ? i : NULL;
                    }
                }else if(inputList[0] > inputList[middleIndex]){
                    for(Integer i=0;i<middleIndex;i++){
                        elementIndex = (inputList[i] == element) ? i : NULL;
                    }
                }else{
                    elementIndex = middleIndex;
                }
                return elementIndex;
            }else{
                return NULL;
            }
        }else {
            throw new HandledException('Input list cannot be empty!!!!');
        }
    }
    //Apex also has inbuilt method indexOf which can be used to find the Index of a element in a given list
    //Documentation: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_list.htm#apex_System_List_indexOf
    public static Integer findIndexOfElementByApexBuiltInMethod(List<Integer> inputList, Integer element){
        If(!inputList.isEmpty()){
            If(inputList.contains(element)){
                return (inputList.indexOf(element) == -1) ? null :  inputList.indexOf(element);
            }else{
                throw new HandledException('Input list doesn\'t contain the element provided!!!!!!!');
            }
        }else{
            throw new HandledException('Input list cannot be empty!!!!');
        }
    }
}