/**
*@Author: Satish Inuganti
*@Description:Run-length encoding is a fast and simple method of encoding strings.
*@E.g. The basic idea is to represent repeated successive characters as a single count and character. 
*			For example, the string "AAAABBBCCDAA" would be encoded as "4A3B2C1D2A".
* */
Public class DailyCodingProblem7 {
    public static string output;
    public static string encodeInput(String inputText){
        List<String> tempList = new List<String>(); 
        for(Integer i=0;i<inputText.length();i++){
            String charAtCurrentIndex = inputText.substring(i,i+1);
            If(tempList.isEmpty()) {
                tempList.add(charAtCurrentIndex);
            }else if (inputText.length()-1 == i){
                tempList.add(charAtCurrentIndex);
                output = (String.isBlank(output) && String.isEmpty(output)) ? tempList.size()+tempList[0] : output+ tempList.size()+tempList[0];
                tempList.clear();
            }else if(tempList.get(tempList.size()-1) == charAtCurrentIndex){
                tempList.add(charAtCurrentIndex);
            }
            else if(tempList.get(tempList.size()-1) != charAtCurrentIndex){
                //check if stack top character is same as current character, else frameoutput , clear temporary stack & add new character
                output = (String.isBlank(output) && String.isEmpty(output)) ? tempList.size()+tempList[0] : output+ tempList.size()+tempList[0];
                tempList.clear();
                tempList.add(charAtCurrentIndex);
            }
        }
        return output;
    }
}