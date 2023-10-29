package pageClasses;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import driverManager.TLDriverFactory;
import stepDefinitions.PredefinedSteps;

public class SearchClassPage {
	PredefinedSteps predef;
	
	public SearchClassPage() 
	{
		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());
	}
	
	public int nthElement;
	
	@FindBy(how = How.CSS, using = "div[class='class-offer-online']")
	public List<WebElement> onlineDiv;
	
	@FindBy(how = How.CSS, using = "button[class='button-fancy-small sign-me-up']")
	public List<WebElement> signUpButton;
	
	@FindBy(how = How.CSS, using = "div span[class='see-details-toggle']")
	public List<WebElement> seeDetailsSpan;
	
	@FindBy(how = How.CSS, using = "div[class='class-summary-details'] p")
	public List<WebElement> summmaryDetails;
	
	@FindBy(how = How.CSS, using = "span[class='provider-info']")
	public List<WebElement> providerInfo;
	
	@FindBy(how = How.CSS, using = "span[class='language-info']")
	public List<WebElement> languageInfo;
	
	@FindBy(how = How.CSS, using = "span[class='product-sales-price']")
	public List<WebElement> salesPrice;
	
	@FindBy(how = How.CSS, using = "ul[id='search-result-items'] div[class='product-tile'] div[class='class-text-middle'] span[class='class-format']")
	public List<WebElement> classType;
	
	public boolean isClassFound = false;
	public boolean isInitialSearch = true;
	
 	public void printClassDetails(String classType)
	{
		predef.clickOnElement(seeDetailsSpan.get(nthElement));
		System.out.println(summmaryDetails.get(nthElement).getText());
		System.out.println(providerInfo.get(nthElement).getText());
		System.out.println(languageInfo.get(nthElement).getText());	
		System.out.println(salesPrice.get(nthElement).getText());
		System.out.println(this.classType.get(nthElement).getText());
	}
	
	public void selectClass(String typeOfClass)
	{
		TLDriverFactory.getDriver().navigate().refresh();
		predef.waitSeconds(10000);
		JavascriptExecutor js = (JavascriptExecutor)TLDriverFactory.getDriver();
		js.executeScript("window.scrollBy(0,document.body.scrollHeight)", "");
		js.executeScript("window.scroll(0, 0)", "");
		List<WebElement> classType = TLDriverFactory.getDriver().findElements(By.cssSelector("span[class='class-format']"));
		for(int i = 0; i < classType.size(); i++)
		{
			System.out.println("Inside for loop");
			if(classType.get(i).getText().trim().toLowerCase().equalsIgnoreCase(typeOfClass.toLowerCase())) 
			{
				System.out.println("Inside if loop");
				nthElement = i;
				printClassDetails(typeOfClass);
				predef.clickOnElement(signUpButton.get(nthElement));
				break;
			}
			
		}
	}

}
