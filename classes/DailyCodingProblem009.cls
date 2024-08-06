/**
* @Author: Satish Inuganti
* @Description:Given a array of numbers representing the stock prices of a company in chronological order, 
	write a apex method that calculates the maximum profit you could have made from buying and selling that stock once. You must buy before you can sell it.
* @Ex: For example, given [9, 11, 8, 5, 7, 10], you should return 5, since you could buy the stock at 5 dollars and sell it at 10 dollars.
* */
public class DailyCodingProblem009 {
    public static Integer calcMaxProfit(List<Integer> stockPricesList){
        List<Integer> strippedStockPricesList = new List<Integer>();
        Integer stockPricesListSize = stockPricesList.size();
        Integer lowestIntegerIndex = FindLowestIntegerIndex.findLowestPostiveInteger(stockPricesList);
        Integer biggestIntegerIndex = FindBiggestIntegerIndex.findBiggestPostiveInteger(stockPricesList);
        If(biggestIntegerIndex< lowestIntegerIndex){
            for(Integer i=lowestIntegerIndex; i<stockPricesListSize;i++){
                strippedStockPricesList.add(stockPricesList[i]);
            }
            Integer rightBiggestIntegerIndex = FindBiggestIntegerIndex.findBiggestPostiveInteger(strippedStockPricesList);
            return strippedStockPricesList.get(rightBiggestIntegerIndex) - stockPricesList.get(lowestIntegerIndex);
        }else{
            return stockPricesList.get(biggestIntegerIndex) - stockPricesList.get(lowestIntegerIndex);
        }
    }
}