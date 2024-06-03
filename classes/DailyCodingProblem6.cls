/**
*@Author: Satish Inuganti
*@Description:Given a string of round, curly, and square open and closing brackets, return whether the brackets are balanced (well-formed).
*@E.g. For example, given the string "([])[]({})", you should return true, Given the string "([)]" or "((()", you should return false.
* */
Public class DailyCodingProblem6 {
    public static Map<String, String> bracketMap = new Map<String,String>{')'=>'(', ']' => '[', '}' => '{'};
        public static Boolean matchStringPattern(String inputText){
            List<String> tempList = new List<String>();
            for(Integer i=0;i<inputText.length();i++){
                String currentIndexChar = inputText.substring(i,i+1);
                If(bracketMap.values().contains(currentIndexChar)){
                    tempList.add(currentIndexChar);
                }else if(bracketMap.keySet().contains(currentIndexChar)){
                    if (!tempList.isEmpty() && tempList.get(tempList.size() - 1) == bracketMap.get(currentIndexChar)) {
                        tempList.remove(tempList.size() - 1); 
                    } else {
                        return false; // Unbalanced
                    }
                }
            }
            return tempList.isEmpty();
        }
}