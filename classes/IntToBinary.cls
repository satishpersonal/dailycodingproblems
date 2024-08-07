/**
* @Author: Satish Inuganti
* @Description:Converts a Non-negative Integer into Binary Format.
* @Ex: For example, given 156, return 10011100 & 00111001[Reverse Order] as a Object
* */
public class IntToBinary {
    public Integer inputNumber;
    public IntToBinary(Integer inputNumber){
        this.inputNumber = inputNumber;
    }
    public Output convertIntToBinary(){
        Integer quotient = inputNumber;
        Output output = new Output();
        do{
            output.binaryFormattedString =  String.valueOf(Math.mod(quotient,2))+output.binaryFormattedString;
            output.binaryFormattedStringInReverseOrder = output.binaryFormattedStringInReverseOrder+String.valueOf(Math.mod(quotient,2));
            quotient = quotient/2;
        }while(quotient > 0);
        return output;
    }
    public class Output{
        public String binaryFormattedString ='';
        public String binaryFormattedStringInReverseOrder = '';
    }
}