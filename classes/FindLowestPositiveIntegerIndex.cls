/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request & Comment Update in README.md File. Happy Learning !
**/
public class FindLowestPositiveIntegerIndex {
    public static Map<Integer, Integer> getSmallestIntegerIndex(List<Integer> numList){
        Map<Integer, Integer> indexValueMap = new Map<Integer, Integer>();
        If(!numList.isEmpty()){
            Integer elementIndex;
            Integer tempValue = numList[0];
            Integer arraySize = numList.size();
            for(Integer i=0;i<arraySize;i++){
                If(tempValue>numList[i]){
                    tempValue = numList[i]; /** Important Step in Array to store the least Element Found always **/
                    elementIndex = i; /** Store Index **/
                }
            }
            indexValueMap.put(elementIndex,numList[elementIndex]);
            return indexValueMap;
        }
        else{
            System.debug('Add element into the List and Give it a Shot!');
            return NULL;
        }
    }
}