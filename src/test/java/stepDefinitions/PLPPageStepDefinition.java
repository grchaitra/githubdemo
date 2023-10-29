package stepDefinitions;

import org.openqa.selenium.WebDriver;

import driverManager.TLDriverFactory;
import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;

public class PLPPageStepDefinition {
	WebDriver driver;

	public PLPPageStepDefinition()
	{
		this.driver = TLDriverFactory.getDriver();
	}
	
	@And("^I click on firstProduct$")
	public void clickFirstProduct()
	{
		ObjectsContainer.getObjectsContainer().getPLPPage().clickFirstProduct();
	}


}
