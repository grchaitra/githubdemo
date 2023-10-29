package pageClasses;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.aventstack.extentreports.Status;

import driverManager.TLDriverFactory;
import io.cucumber.java.en.And;
import stepDefinitions.CucumberHooks;
import stepDefinitions.PredefinedSteps;

public class PDPPage {
	
	PredefinedSteps predef;

	public PDPPage() {

		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());

	}
	
	@FindBy(css = ".product-name")
	public WebElement productName;
	
	@FindBy(css = "#Quantity")
	public WebElement quantity;
	
	@FindBy(css = "#add-to-cart")
	public WebElement addToCartButton;
	
	String addToCartProductSet = "button[value='Add to Cart']";
	@FindBy(css = "button[value='Add to Cart']")
	public WebElement addToCartForProductSet;
	
	@FindBy(css = "button[value='Add All to Cart']")
	public WebElement addAllToCartForProductSet;
	
	@FindBy(css = ".minicart-icon.fa.fa-shopping-cart")
	public WebElement cartLink;
	
	@FindBy(css = "a[title='Checkout']")
	public WebElement cart_checkout;
	
	public void productDetails()
	{
		System.out.println("Product name is "+productName.getText());
		if(predef.findElementNotPresent(quantity))
		{
			System.out.println("Product quantity is "+quantity.getAttribute("value"));	
		}
		
	}
	
	public void addProdutsFromProductSet(int i)
	{
		if(TLDriverFactory.getDriver().findElements(By.cssSelector(addToCartProductSet)).size() <= i)
		{
			predef.clickOnElement(addAllToCartForProductSet);
		}
		else
		{
			for(int j = 0; j<i; j++)
			{
				predef.clickOnElement(addToCartForProductSet);
			}
		}
	}
	public void addProductToTheCart()
	{
		predef.clickOnElement(addToCartButton);
		CucumberHooks.test.log(Status.PASS, "Product added to the cart");
	}


}
