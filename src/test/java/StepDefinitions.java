import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefinitions {
    @Given("^pet is new to the store$")
    public void petIsNewToTheStore() {
    }

    @When("^new pet details ([^\"]*),([^\"]*),([^\"]*),([^\"]*),([^\"]*)are submitted$")
    public void newPetDetailsPetIDPetNamePhotoUrlsTagsStatusAreSubmitted(int petID, String petName, String photoUrl, int tags, String status) {

    }

    @Then("^new pet is added to the store$")
    public void newPetIsAddedToTheStore() {
    }
}
