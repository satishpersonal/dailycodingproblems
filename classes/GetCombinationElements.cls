/**
* For more Info Please read README.md File in the Repo.
* If, you find any bugs or improvements. Feel free to create a Pull Request.
**/
public class GetCombinationElements {
    public static List<Map<Integer, Integer>>  getTargetArrayMap(List<Integer> numList, Integer targetTotal){
        Integer arraySize = numList.size();
        List<Map<Integer, Integer>> numberCombo = new List<Map<Integer, Integer>>();
        for(Integer i=0;i<arraySize;i++){
            Integer complementNum = targetTotal - numList[i];
            If(numList.contains(complementNum)){
                Map<Integer, Integer> comboMap = new Map<Integer, Integer>();
                comboMap.put(numList[i], complementNum);
                numberCombo.add(comboMap);
            }
        }
        If(!numberCombo.isEmpty()){
            for(Integer i=0; i<numberCombo.size();i++){
                System.debug('combinations found are '+numberCombo[i]);
            }
            return numberCombo;
        }
        else{
            System.debug('No Combination Found');
            return NULL;
        }
    }
}