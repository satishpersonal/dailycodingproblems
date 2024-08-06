/**
* @Author: Satish Inuganti
* @Description:Given a dictionary of words and a string made up of those words (no spaces), return the original sentence in a list. 
*		If there is more than one possible reconstruction, return any of them. If there is no possible reconstruction, then return null.
*		For example, given the set of words 'quick', 'brown', 'the', 'fox', and the string "thequickbrownfox", you should return ['the', 'quick', 'brown', 'fox'].
* @Bug: Not working for duplicate pass phrase: 
* 		Given the set of words 'bed', 'bath', 'bedbath', 'and', 'beyond', and the string "bedbathandbeyond", return either ['bed', 'bath', 'and', 'beyond] or ['bedbath', 'and', 'beyond'].
* 		It can be probably solved by a wrapper, but If you found out a nice solution with primitive data type, feel free to raise a #PR. I'm happy to accept :)
* @TestClass: DailyCodingProblem4Test.apxc
* */
public class DailyCodingProblem004 {
	public static List<String> doBuild(List<String> dictionaryOfWords, String inputSentence){
		List<String> outputSortedStringList = new List<String>();
		Map<Integer,String> indexWordMap = new Map<Integer,String>();
		for(String s : dictionaryOfWords){
			If(inputSentence.contains(s)){
				Integer startIndexOfWord = inputSentence.indexOf(s);
				indexWordMap.put(startIndexOfWord,s);
			}
		}
		//Direct typecasting is not possible, hence using a alternative approach to convert a set into list and sort it
		List<Integer> unsortedMapKeySet = new List<Integer>();
		unsortedMapKeySet.addAll(indexWordMap.keySet());
		unsortedMapKeySet.sort();
		for(Integer i : unsortedMapKeySet){
			outputSortedStringList.add(indexWordMap.get(i));
		}
        System.debug(outputSortedStringList);
		return outputSortedStringList;
	}
}