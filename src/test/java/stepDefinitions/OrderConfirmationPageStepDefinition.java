package stepDefinitions;

import java.io.IOException;

import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;

public class OrderConfirmationPageStepDefinition {
	@And("^I print order details$")
	public void printOrderDetails()
	{
		ObjectsContainer.getObjectsContainer().getOrderConfirmationPage().printOrdeDetails();
	}
	@And("^I save order details$")
	public void storeOrderDetails() throws IOException
	{
		ObjectsContainer.getObjectsContainer().getOrderConfirmationPage().storeOrderDetails(CucumberHooks.setUpObject.scenarioName);
	}
	
	@And("^I click on continue button on address validation dialog$")
	public void iClickOnContinueButton()
	{
		ObjectsContainer.getObjectsContainer().getOrderConfirmationPage().iClickOnContinueButton();
	}

}
