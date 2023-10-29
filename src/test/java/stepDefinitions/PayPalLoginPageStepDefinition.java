package stepDefinitions;

import com.aventstack.extentreports.Status;

import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;

public class PayPalLoginPageStepDefinition {

	@And("^I enter paypal login details of \"(.*)\"$")
	public void enterPaypalLoginDetails(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().payPal.enterPayPalLoginDetails(rowRef);
		CucumberHooks.test.log(Status.PASS, "PayPal log in is successful");
	}
}
