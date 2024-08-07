/**
* @Author: Satish Inuganti
* @Description:Converts a Binary Formatted Number into Integer Format.
* @Ex: For example, given 10011100, return 156.
* */
public class BinaryToInt{
    public Integer inputNumber;
    public Double output;
    public BinaryToInt(Integer inputBinaryNumber){
        this.inputNumber = inputBinaryNumber;
        this.output = Double.valueOf(0.0);
    }
    public Integer convertToInt(){
        String inputNumberInTextFormat = String.valueOf(inputNumber);
        Integer inputLength = inputNumberInTextFormat.length();
        for(Integer i=0;i<inputLength;i++){
            Integer currentIndexElement = Integer.valueOf( inputNumberInTextFormat.substring(i,i+1));
            output = (currentIndexElement == 1 ) ? output+Math.pow(Double.valueOf(2.0), Double.valueOf(inputLength-(i+1))) : output;
        }
        return Integer.valueOf(output);
    }
}