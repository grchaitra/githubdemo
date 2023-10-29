package pageClasses;

import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.Status;

import driverManager.TLDriverFactory;
import io.cucumber.java.en.And;
import stepDefinitions.CucumberHooks;
import stepDefinitions.PredefinedSteps;

public class OrderConfirmationPage {
	
	PredefinedSteps predef;

	public OrderConfirmationPage() {

		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());

	}
	
	@FindBy(css = "div[class='ui-dialog ui-widget ui-widget-content ui-corner-all ui-front address-validation-dialog ui-draggable'] div[id='address-validation-dialog']")
	public WebElement addressValidationDialog;
	
	@FindBy(css = "div[class='ui-dialog ui-widget ui-widget-content ui-corner-all ui-front address-validation-dialog ui-draggable'] div[id='address-validation-dialog'] button[id='ship-to-original-address']")
	public WebElement continueButton;
	
	@FindBy(css = "div[class='name'] a")
	public WebElement productName;

	@FindBy(css = "div[class='line-item-quantity item-quantity']")
	public WebElement productQuantity;
	
	@FindBy(css = "div[class=\"line-item-price item-total\"] span")
	public WebElement productPrice;
	
	@FindBy(css = "h2[class='order-date'] span[class='value']")
	public WebElement orderDate;

	@FindBy(css = "h2[class='order-number'] span[class='value']")
	public WebElement orderNumber;

	@FindBy(css = "div[class='confirmation-message'] h1")
	public WebElement confirmationMessage;
	
	@FindBy(css = ".right-row.order-value")
	public WebElement orderTotal;
	
	@FindBy(css = "div[class='order-subtotal'] div[class='right-row']")
	public WebElement subTotal;
	
	@FindBy(css = "div[class='order-sales-tax'] div[class='right-row']")
	public WebElement estimatedSalesTax;
	
	@FindBy(css = "div[class='cc-type']")
	public WebElement paymentDetails;
	
	@FindBy(css = "span[class='cust-cmpny-name mini-address-name']")
	public WebElement customerName;
	
	@FindBy(css = "div[class='mini-address-location'] address")
	public WebElement billingAddressDetails;
	
	public void printOrdeDetails()
	{
		System.out.println("Product name is"+ productName.getText());
		System.out.println("Product quantity is "+ productQuantity.getText());
		System.out.println("Product price is "+ productPrice.getText());
		System.out.println("Order number is "+ orderNumber.getText());
		System.out.println("Order date is "+ orderDate.getText());
		System.out.println("Order subtotal is "+ subTotal.getText());
		System.out.println("Order estimated sales tax is "+ estimatedSalesTax.getText());
		System.out.println("Order total is "+ orderTotal.getText());
		System.out.println("Payment details are "+ paymentDetails.getText());
		System.out.println("Customer name is "+ customerName.getText());
		System.out.println("Billing address is "+ billingAddressDetails.getText());
		
	}
	
	public void storeOrderDetails(String scenarioName) throws IOException
	{
		predef.waitForElementVisibility(orderNumber);
		CucumberHooks.test.log(Status.PASS, "Order placed successfully and the order number is "+ orderNumber.getText());
		predef.writeToTextFile(orderNumber.getText(), scenarioName);	
	}
	
	public void iClickOnContinueButton()
	{
		try
		{
			System.out.println("In the iClickOnContinueButton method");
			predef.waitForElementVisibility(continueButton);
			continueButton.click();
		}
		catch(Exception e) 
		{
			
		}
	}
}
