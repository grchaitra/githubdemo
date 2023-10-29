package pageClasses;

import java.util.HashMap;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;

import com.aventstack.extentreports.Status;

import driverManager.TLDriverFactory;
import objectsContainer.ObjectsContainer;
import stepDefinitions.CucumberHooks;
import stepDefinitions.PredefinedSteps;

public class HomePage{
	
	PredefinedSteps predef;
	
	public HomePage() {

		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());

	}
	
	@FindBy(css = "a[title='Search']")
	public WebElement searchLink;
	
	@FindBy(css = ".static-only") ////button[@id='onetrust-accept-btn-handler']
	public WebElement americanRedCrossLogo;
	
	@FindBy(css = "li[class='product-label enableproducts'] span")
	public WebElement search_products;
	
	By selectedClass = By.cssSelector("div[class='fixed-header-main'] div[class='selected-option selected']+div");
	public String sSelectedClass = "div[class='fixed-header-main'] div[class='selected-option selected']+div";
	
	@FindBy(css = "div[class='selected-option selected']+div")
	public WebElement webSelectedClass;
	
	String sSearch_class = "(//div[@class='header-class-search cat-search']//div)[3]";
	@FindBy(css = "div[class='field-wrapper class-wrapper'] div[class='selected-option selected show-icon']+div")
	public WebElement search_class;
	
	String sLocation = "div[class='header-geo-location global-geo geo-complete-results'] div[class='header-geo-field'] input";
	@FindBy(css = "input[name='zip']")
	public WebElement location;
	
	@FindBy(css = "input[placeholder='Enter a product name or description']")
	public WebElement search_products_input;
	
	@FindBy(css = "form[class='simple-search-action'] span[class='header-geo-arrow']")
	public WebElement search_products_input_arrow;	
	
	@FindBy(css = "button[class='header-geo-submit']")
	public WebElement search_class_input_arrow;
	
	@FindBy(css = "a[title='User: My Account']")
	public WebElement accountLink;

	@FindBy(css = "a[class='user-account']")
	public WebElement accountLink1;
	
	
	@FindBy(css = "a[title='Go to: Find My Certificate']")
	public WebElement findMyCertificateLink;
	
	@FindBy(css = "a[title='Go to: My Certificate']")
	public WebElement myCertificateLink;
	
	@FindBy(css = "button[value='Login / Create Account']")
	public WebElement loginOrCreateAccoutButton;
	
	@FindBy(css = "a[class='mini-cart-link']")
	public WebElement cartLink;
	
	@FindBy(css = "a[class='mini-cart-link-cart']")
	public WebElement viewCartLink;
	
	By byRemoveButton = By.cssSelector("button[value='Remove']");
	
	String sRemoveButton = "button[value='Remove']";
	public WebElement removeButton;
	
	public void clearCartItems()
	{
		predef.waitSeconds(5000);
		try
		{
			predef.clickOnElement(cartLink);
			predef.clickOnElement(viewCartLink);
			removeButton = TLDriverFactory.getDriver().findElement(By.cssSelector(sRemoveButton));
			for(;predef.findElementNotPresent(removeButton);)
			{
				predef.clickOnElement(removeButton);
				predef.waitSeconds(5000);
				try
				{
					removeButton = TLDriverFactory.getDriver().findElement(By.cssSelector(sRemoveButton));
				}
				catch(org.openqa.selenium.NoSuchElementException e)
				{
					System.out.println("No items to clear");
				}
			}
			CucumberHooks.test.log(Status.PASS, "Cart items cleared");
		}
		catch(org.openqa.selenium.NoSuchElementException e)
		{
			CucumberHooks.test.log(Status.PASS, "No items to clear the cart");
			System.out.println("No items to clear");
		}
		catch(Exception e)
		{
			
		}
	}
	
	public void search(String rowRef) {
		
		predef.clickOnElement(searchLink);
		try
		{
			predef.waitSeconds(1000);
			JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
			js.executeScript("arguments[0].scrollIntoView(true);", search_products);
			search_products.click();
			predef.waitSeconds(2000);	
		}
		catch(Exception e)
		{
			System.out.println("seach_products is already clicked");
		}
		HashMap<String, String> product = predef.readDataFromExcelSheet(rowRef, "ProductDetails");
		predef.typeinEditbox(search_products_input, product.get("ProductID"));
		predef.clickOnElement(search_products_input_arrow);
		
	}
	
	public void clickSearhLink()
	{
		predef.clickOnElement(searchLink);
	}
	
	public void clickSearchProducts()
	{
		search_products.click();
	}
	
	public void typeSearchProductsInput(String productID)
	{
		predef.typeinEditbox(search_products_input, productID);
	}
	
	public void clickSearchProductInputArrow()
	{
		predef.clickOnElement(search_products_input_arrow);
	}
	
	
	public void searchUsingPageMethods(String rowRef)
	{
		this.clickSearhLink();
		try
		{
			predef.waitSeconds(1000);
			JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
			js.executeScript("arguments[0].scrollIntoView(true);", search_products);
			this.clickSearchProducts();
			predef.waitSeconds(2000);	
		}
		catch(Exception e)
		{
			System.out.println("seach_products is already clicked");
		}
		HashMap<String, String> product = predef.readDataFromExcelSheet(rowRef, "ProductDetails");
		this.typeSearchProductsInput(product.get("ProductID"));
		this.clickSearchProductInputArrow();
	}
	
	public void searchClass(String rowRef) {
		
		HashMap<String, String> product = predef.readDataFromExcelSheet(rowRef, "ProductDetails");
		WebElement search_class = TLDriverFactory.getDriver().findElement(By.xpath(sSearch_class));
		predef.selectDropDownWithoutWait(search_class, product.get("ProductID"));
		predef.typeinEditbox(location, product.get("Location"));
		predef.waitSeconds(5000);
		predef.clickWithoutWait(search_class_input_arrow);
		predef.waitSeconds(6000);
		ObjectsContainer.getObjectsContainer().getSearchClassPage().selectClass(rowRef);
	}
	public void searchForCertificate(String rowRef)
	{
		HashMap<String, String> product = predef.readDataFromExcelSheet(rowRef, "ProductDetails");
		predef.clickOnElement(accountLink1);
		predef.clickOnElement(findMyCertificateLink);
		ObjectsContainer.getObjectsContainer().getCertificationsPage().searchCertificate(product);	
	}
	
	public void searchForCertificateForRegisteredUser(String rowRef)
	{
		HashMap<String, String> product = predef.readDataFromExcelSheet(rowRef, "ProductDetails");
		
		if(predef.findElementNotPresent(accountLink))
		{
			predef.clickOnElement(accountLink);
		}
		else if(predef.findElementNotPresent(accountLink1))
		{
			predef.clickOnElement(accountLink1);	
		}
		predef.clickOnElement(myCertificateLink);
		new CertificationsPage().searchCertificateForRegisteredUser(product);	
	}
	public void i_am_on_homepage()
	{
		if(predef.i_see_element(americanRedCrossLogo))
		{
			
		}
		else
		{
			CucumberHooks.test.log(Status.FAIL, "Element "+americanRedCrossLogo.getClass().getName()+" is not visible in the page ");
			Assert.assertTrue(false);
		}
	}
	
	By classesList = By.xpath("//div/li[@label='find a class']//following-sibling::li");
	public List<WebElement> webClassesList;
	
	By selectionList = By.cssSelector("div[class='header-class-search cat-search'] div[class=\"selection-list\"]");
	public WebElement webSelectionList;
	
	public void SearchClassRoomOrBlendedClass()
	{
		
		predef.clickOnElement(TLDriverFactory.getDriver().findElement(selectionList));
		webClassesList = TLDriverFactory.getDriver().findElements(classesList);
		for(int i = 0; i < webClassesList.size(); i++)
		{
			predef.clickOnElement(webClassesList.get(i));
			predef.typeinEditbox(location, "WASHINGTON D.C., DC, USA");
			predef.waitSeconds(5000);
			predef.clickWithoutWait(search_class_input_arrow);
		}
	}
	
	public void clickAccountLink()
	{
		predef.clickOnElement(accountLink);
	}
	
	public void clickLoginOrCreateAccoutButton()
	{
		predef.clickOnElement(loginOrCreateAccoutButton);
	}
}
