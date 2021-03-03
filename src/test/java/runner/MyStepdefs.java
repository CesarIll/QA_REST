package runner;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.http.ContentType;
import io.restassured.response.Response;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.equalTo;

public class MyStepdefs {
    Response response;
    String email;
    int password;

    @Given("Access to Todo.ly with email {string} and password {int}")
    public void accessToTodoLyWithEmailAndPassword(String email, int password){
        this.email = email;
        this.password = password;
    }

    @When("I sent a request for creation of a new item at {string}")
    public void iSentARequestForCreationOfANewItemAtHttpTodoLyApiItemsJson(String url, String item) {
        response =  given().
                    auth().
                    preemptive().
                    basic(email,""+password).
                    contentType(ContentType.JSON).
                    body(item).
                    log().
                    all().
                    when().
                    post(url);
    }

    @Then("My status code must be {int} \\(Ok)")
    public void myStatusCodeMustBeOk(int statusCode) {
        response.then().statusCode(statusCode);
    }

    @And("My item content must be {string}")
    public void myItemNameMustBe(String content) {
        response.then().body("Content", equalTo(content));
    }


}
