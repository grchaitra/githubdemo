package stepDefinitions;

import com.aventstack.extentreports.Status;

import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;
import utilities.ExtentReportsClass;

public class CheckoutPaymentBillingPageStepDefinition {
	
	@And("^I enter card details of \"(.*)\" for digital product$")
	public void digiEnterCardDetails(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterCardDetails(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" card details entered");
	}
	@And("^I enter card details of \"(.*)\" for classes$")
	public void digiEnterCardDetailsForClasses(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterCardDetailsForClasses(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" card details entered");
	}
	
	@And("^I enter billing address details of \"(.*)\" for digital product$")
	public void digiEnterBillingAddressDetails(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAddressForGuestUser(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing Address details entered");
	}
	@And("^I enter billing address details of \"(.*)\" for classes$")
	public void enterBillingAddressDetailsForClass(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAddressForClass(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing Address details entered");
	}
	@And("^I enter billing address details of \"(.*)\" for classes for guest user$")
	public void enterBillingAddressDetailsForClassForGuestUser(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAddressForClassForGuestUser(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing Address details entered");
	}
	@And("^I enter billing address details of \"(.*)\" for digital product for registered user$")
	public void digiEnterBillingAddressDetailsRegisteredUser(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAddressRegisteredUser(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing Address details entered");
	}
	
	@And("^I enter billing and shipping address details of \"(.*)\" for digital product for registered user$")
	public void digiEnterBillingAndShippingAddressDetailsRegisteredUser(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAndShippingAddressRegisteredUser(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing and Shipping Address details entered");
	}
	
	@And("^I enter billing and shipping address details of \"(.*)\" for digital product for registered user with PayPal as payement method$")
	public void digiEnterBillingAndShippingAddressDetailsRegisteredUserWithPayPal(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAndShippingAddressRegisteredUserWithPayPal(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing Address details entered");
	}
	@And("^I enter billing address details of \"(.*)\" for class for registered user$")
	public void digiEnterBillingAddressDetailsRegisteredUserForClass(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAddressForRegisteredUserForClass(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing Address details entered");
	}
	@And("^I enter billing address details of \"(.*)\" for class for registered user with cc as payment method$")
	public void digiEnterBillingAddressDetailsRegisteredUserForClassWithCCAsPaymentMethod(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterBillingAddressForRegisteredUserForClassesWithCC(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Billing Address details entered");
	}
	
	@And("^I enter student details of \"(.*)\"$")
	public void enterStudentDetals(String rowRef)
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().enterStudentInfo(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Student details entered");
	}
	
	@And("^I click on PayPal Radio button$")
	public void iClickOnPayPalRadioButton()
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().clickOnPayPal();
	}
	
	@And("^I click on digiPlaceOrder button")
	public void iClickOnDigiPlaceOrderButton()
	{
		ObjectsContainer.getObjectsContainer().getCheckoutPaymentBillingPage().clickOndigiPlaceOrder();
	}
}
