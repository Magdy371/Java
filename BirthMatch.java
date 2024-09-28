import java.util.*;

public class BirthMatch {
    public static void main(String[] args) {
        Map<String, String> map = new HashMap<>();
        map.put("Magdy", "30-7-2000");
        map.put("Ahmed", "1-1-2000");
        map.put("Mohamed", "1-1-2000");
        map.put("Ali", "1-1-2005");
        map.put("Khaled", "1-2-2010");
        try (Scanner s = new Scanner(System.in)) {
            System.out.println("Enter the birthdat in this format dd-mm-yy: ");
            String date = s.nextLine();
            getKeys(map, date);
        }
    }

    private static Set<String> getKeys(Map<String, String> map, String date) {
        Set<String> keys = new HashSet<>();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getValue().equals(date)) {
                keys.add(entry.getKey());
            }
        }
        if (keys.isEmpty()) {
            System.out.println("No match found");
        } else {
            System.out.println("Match found for: ");
            for (String key : keys) {
                System.out.println(key);
            }
        }
        return keys;
    }
}
