package testCompareJson;

import compareJson.Ejercicio1;
import org.junit.Assert;
import org.junit.Test;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Ejercicio1Test {

    //private String pathResources = "C:\\Users\\cesar\\Documents\\Gestión 2021\\UPB\\1ER SEMESTRE\\QA\\QA_REST\\src\\test\\resources\\";
    private String pathResources = "C:\\";

    public static String readFile(String path, Charset encoding) throws IOException
    {
        byte[] encoded = Files.readAllBytes(Paths.get(path));
        return new String(encoded, encoding);
    }

    @Test
    public void verify_compared_json_1() throws IOException {
        boolean actual = Ejercicio1.areEqualsJson(readFile(pathResources + "expected.json", StandardCharsets.US_ASCII),readFile(pathResources + "actual1.json", StandardCharsets.US_ASCII));
        Assert.assertEquals("Diferente valor", true, actual);
    }

    @Test
    public void verify_compared_json_2() throws IOException {
        boolean actual = Ejercicio1.areEqualsJson(readFile(pathResources + "expected.json", StandardCharsets.US_ASCII),readFile(pathResources + "actual2.json", StandardCharsets.US_ASCII));
        Assert.assertEquals("Diferente valor", false, actual);
    }

    @Test
    public void verify_compared_json_3() throws IOException {
        boolean actual = Ejercicio1.areEqualsJson(readFile(pathResources + "expected.json", StandardCharsets.US_ASCII),readFile(pathResources + "actual3.json", StandardCharsets.US_ASCII));
        Assert.assertEquals("Diferente valor", false, actual);
    }

    @Test
    public void verify_compared_json_4() throws IOException {
        boolean actual = Ejercicio1.areEqualsJson(readFile(pathResources + "expected.json", StandardCharsets.US_ASCII),readFile(pathResources + "actual4.json", StandardCharsets.US_ASCII));
        Assert.assertEquals("Diferente valor", false, actual);
    }

    @Test
    public void verify_compared_json_5() throws IOException {
        boolean actual = Ejercicio1.areEqualsJson(readFile(pathResources + "expected.json", StandardCharsets.US_ASCII),readFile(pathResources + "actual5.json", StandardCharsets.US_ASCII));
        Assert.assertEquals("Diferente valor", false, actual);
    }
}
