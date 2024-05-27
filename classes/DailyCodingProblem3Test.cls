@IsTest
public class DailyCodingProblem3Test {
    public static testMethod void doTest(){
        List<Integer> inputList = new List<Integer>{10, 5, 2, 7, 8, 7};
            List<Integer> outputExpectedList = new List<Integer>{10,7,8,8};
                Test.startTest();
        List<Integer> output = DailyCodingProblem3.doBuild(inputList,3);
        Test.stopTest();
         System.Assert.areEqual(true, output.equals(outputExpectedList));      
    }
}