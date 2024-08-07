/**
* @Author: Satish Inuganti
* @Description:Given an integer n, return the length of the longest consecutive run of 1s in its binary representation.
* @Ex: For example, given 156, you should return 3 [10011100] since we have 3 consecutive 1's maximum.
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class DailyCodingProblem012 {
    public static Integer findMaxConsecutiveElement(Integer inputNumber, Integer inputCharacter){
        List<String> binarySplitList = new List<String>();
        Integer maxConsecutiveSize = 0;
        inputCharacter = (inputCharacter == 0) ? 1 : 0;
        If(inputNumber > 0){
            IntToBinary.Output convertedOutput = new IntToBinary.Output();
            IntToBinary convertToBinary = new IntToBinary(inputNumber);
            convertedOutput = convertToBinary.convertIntToBinary();
            binarySplitList = convertedOutput.binaryFormattedString.split(String.valueOf(inputCharacter));
            for(String s : binarySplitList){
                if(s.length() > maxConsecutiveSize){
                    maxConsecutiveSize = s.length();
                    
                }
            }
            return maxConsecutiveSize;
        }else{
            throw new HandledException('Input should be greater than > 0');
        }
    }
}