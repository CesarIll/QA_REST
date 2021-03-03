package compareJson;

import org.json.JSONObject;

public class Ejercicio1 {

    public static boolean areEqualsJson(String exp, String act) {
        JSONObject expected = new JSONObject(exp); expected.remove("Date");
        JSONObject actual = new JSONObject(act); actual.remove("Date");
        return expected.similar(actual);
    }
}
