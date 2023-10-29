package pageClasses;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import stepDefinitions.PredefinedSteps;

public class PLPPage {
	PredefinedSteps predef;
	
	public PLPPage() {

		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());
	}	
	
	@FindBy(css = ".product-name a")
	public WebElement firstProduct;
	
	public void clickFirstProduct()
	{
		predef.clickOnElement(firstProduct);
	}
	
}
