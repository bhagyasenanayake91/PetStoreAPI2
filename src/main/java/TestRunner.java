import cucumber.api.CucumberOptions;

@CucumberOptions(
        features = "features"
        ,glue={"StepDefinitions"}
)

public class TestRunner {

}