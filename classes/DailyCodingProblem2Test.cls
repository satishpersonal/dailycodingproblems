@IsTest
public class DailyCodingProblem2Test {
    public static testMethod void testDoBuildArrayMethod(){
        List<Integer> input = new List<Integer>{1,2,3,4,5};
            List<Integer> output = new List<Integer>{120,60,40,30,24};
                Test.startTest();
        List<Integer> apexClassOutput = DailyCodingProblem2.doBuildArray(input);
        Test.stopTest();
        System.Assert.areEqual(true, apexClassOutput.equals(output));
    }
}