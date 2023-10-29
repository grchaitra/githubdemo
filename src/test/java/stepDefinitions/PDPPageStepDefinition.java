package stepDefinitions;

import org.openqa.selenium.WebDriver;

import com.aventstack.extentreports.Status;

import driverManager.TLDriverFactory;
import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;

public class PDPPageStepDefinition {
WebDriver driver;
	
	public PDPPageStepDefinition()
	{
		this.driver = TLDriverFactory.getDriver();
	}

	@And("^I print product details in PDP$")
	public void printProductDetails()
	{
		ObjectsContainer.getObjectsContainer().getPDPPage().productDetails();
	}
	@And("^I add (\\d+) products to the cart from a product set$")
	public void addProdutsFromProductSet(int i)
	{
		ObjectsContainer.getObjectsContainer().getPDPPage().addProdutsFromProductSet(i);
		CucumberHooks.test.log(Status.PASS, "Product set added to the cart");
	}
	@And("^I add product to the cart$")
	public void addProductToTheCart()
	{
		ObjectsContainer.getObjectsContainer().getPDPPage().addProductToTheCart();
	}

}
