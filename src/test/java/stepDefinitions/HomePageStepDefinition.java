package stepDefinitions;

import org.openqa.selenium.WebDriver;

import com.aventstack.extentreports.Status;

import driverManager.TLDriverFactory;
import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;
import utilities.ExtentReportsClass;

public class HomePageStepDefinition {
	WebDriver driver;
	
	public HomePageStepDefinition()
	{
		this.driver = TLDriverFactory.getDriver();
	}
	
	@And("^I clear cart items$")
	public void iClearCartItems()
	{
		ObjectsContainer.getObjectsContainer().getHomePage().clearCartItems();
	}
	@And("^I am on home page$")
	public void i_am_on_homepage()
	{
		ObjectsContainer.getObjectsContainer().getHomePage().i_am_on_homepage();
	}
	@And("^I seach product \"(.*)\"$")
	public void search(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getHomePage().search(rowRef);
	}
	
	@And("^I seach product using page methods by \"(.*)\"$")
	public void searchUsingPageMethods(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getHomePage().searchUsingPageMethods(rowRef);
	}

	@And("^I search certificate \"(.*)\"$")
	public void searchForCertificate(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getHomePage().searchForCertificate(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" certificate added to the cart");
	}
	@And("^I search certificate \"(.*)\" for registered user$")
	public void searchForCertificateForRegisteredUser(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getHomePage().searchForCertificateForRegisteredUser(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" certificate added to the cart");
	}
	@And("^I seach class \"(.*)\"$")
	public void searchClass(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getHomePage().searchClass(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" class added to the cart");
	}
	
	@And("^I click on accountLink$")
	public void clickAccountLink()
	{
		ObjectsContainer.getObjectsContainer().getHomePage().clickAccountLink();
	}
	
	@And("^I click on loginOrCreateAccoutButton$")
	public void clickLoginOrCreateAccoutButton()
	{
		ObjectsContainer.getObjectsContainer().getHomePage().clickLoginOrCreateAccoutButton();
	}
}
