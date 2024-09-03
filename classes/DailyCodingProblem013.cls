/**
* @Author: Satish Inuganti
* @Description:Given an unordered list of flights taken by someone, each represented as (origin, destination) pairs, and a starting airport, 
compute the person's itinerary. If no such itinerary exists, return null. If there are multiple possible itineraries
* @Ex: For example, given the list of flights [('SFO', 'HKO'), ('YYZ', 'SFO'), ('YUL', 'YYZ'), ('HKO', 'ORD')] and starting airport 'YUL', you should return the list ['YUL', 'YYZ', 'SFO', 'HKO', 'ORD'].
* @Known Bugs: NA. If, you find any bugs or improvements. Feel free to create a Pull Request.
* */
public class DailyCodingProblem013 {
    public static List<String> findItinerary(List<List<String>> originAndDestinationPairs, String inputDestination){
        List<String> itinerary = new List<String>{inputDestination};
        Integer originAndDestinationPairsSize = originAndDestinationPairs.size();
        for(Integer i =0;i< originAndDestinationPairsSize;i++){
            Integer matchedIndex = findMatchingAirportWithProvidedOrigin(originAndDestinationPairs, inputDestination);
            List<String> matchedPair = originAndDestinationPairs.get(matchedIndex);
            If(matchedPair.size()>0){
                itinerary.add(matchedPair[1]);
                inputDestination = matchedPair[1];
                originAndDestinationPairs.remove(matchedIndex);
                return itinerary;
            }else{
                itinerary.clear();
            }
        }
        If(itinerary.size() > 0){
            return itinerary;
        }else{
            throw new HandledException('Matching Itinerary not found, Good luck');
        }
    }
    private static Integer findMatchingAirportWithProvidedOrigin(List<List<String>> inputPairs, String origin){
        Integer matchedIndex;
        Integer inputPairsSize = inputPairs.size();
        for(Integer i=0; i<inputPairsSize;i++){
            List<String> currentPair = inputPairs[i];
            for(Integer j=0; j<currentPair.size();j++){
                If(currentPair[j] == origin){
                    matchedIndex = i;
                    break;
                }else{
                    j++;
                }
            }
        }
        return matchedIndex;
    }
}