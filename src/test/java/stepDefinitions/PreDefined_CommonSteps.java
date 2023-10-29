package stepDefinitions;

import java.util.List;
import java.util.Properties;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;
import org.testng.Reporter;

import com.aventstack.extentreports.Status;

import driverManager.TLDriverFactory;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import objectsContainer.ObjectsContainer;
import utilities.EnvironmentVals;

public class PreDefined_CommonSteps
{
	WebDriver driver;
	PredefinedSteps predefSteps;
	Properties prop;
	
	public PreDefined_CommonSteps()
	{
		this.driver = TLDriverFactory.getDriver();		
		predefSteps= new PredefinedSteps(driver);	
	}
	
	@And("^I click on (.*) in (.*)$")
	public void clickOn(String fieldName, String page) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, SecurityException {
		WebElement ele = ObjectsContainer.getObjectsContainer().getPageObject(fieldName, page);
		if(ele!=null)
		{
			predefSteps.clickOnElement(ele);
		}
		else
		{
			Assert.fail(fieldName +" IS NOT THERE IN "+page);
		}
	}
	@When("^I enter text \"(.*)\" into (.*) in (.*)$")
	public void inputTo(String text, String fieldName, String page) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, SecurityException {
		WebElement ele = ObjectsContainer.getObjectsContainer().getPageObject(fieldName, page);
		if(ele!=null)
		{
			predefSteps.typeinEditbox(ele, text);
		}
		else
		{
			Assert.fail(fieldName +"IS NOT THERE IN  "+page);
		}
		
	}
	@And("^I see element (.*) in (.*)$")
	public void i_see_element(String fieldName, String page) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException
	{
		WebElement ele = ObjectsContainer.getObjectsContainer().getPageObject(fieldName, page);
		if(predefSteps.i_see_element(ele))
		{
			CucumberHooks.test.log(Status.PASS, fieldName+" is visible in the page "+page);
		}
		else
		{
			CucumberHooks.test.log(Status.FAIL, fieldName+" is not visible in the page "+page);
			Assert.assertTrue(ele.isDisplayed(), ele.getText() + " is not seen on page");
		}	
	}

	@When("^I do not enter any value in (.*)$")
	public void i_do_not_enter_any_data_in_element(String locator) throws Throwable 
	{
		try {
			  WebElement web_Element = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
			  web_Element.sendKeys(Keys.chord(Keys.CONTROL,"a",Keys.DELETE));
			  Reporter.log("No value entered in " + locator);
			 } 
			catch (Exception e) {
				predefSteps.takeScreenshot("WebElementDoesNotExists");
				Assert.assertTrue(false,"Test is Failed due to exception occured while clearing text in the element "	+ locator + "  due to  " + e.getMessage());
			 } 
		}
	
	@Then("^I seee (.*)$")
	public void i_should_see_element(String locator)
	{
		WebElement element = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		Assert.assertTrue(element.isDisplayed(), locator + " is not seen on page");
		Reporter.log(locator +" is verified for its presence on page");
	}
	
	@And("^I do not see (.*)$")
	public void i_should_not_see_element(String locator)
	{
		boolean isPresent = predefSteps.findElementNotPresent(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		if(isPresent==true) {
			WebElement element = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
			Assert.assertFalse(element.isDisplayed(), locator + " is not seen on page");
		}		
		Reporter.log(locator +" is verified that is not visible on page");
	}
	
	@And("^I tap on (.*)$")
	public void i_tap_on(String locator) throws Throwable {
	 predefSteps.clickOnElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
	 predefSteps.waitSeconds(2000);
	 Reporter.log("Tap on "+ locator);
	} 

	@When("I press \"(.*)\" key in (.*)$")
	public void keyBoardAction(String event, String locator)
	{  
		WebElement	element = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
			
		switch(event.toUpperCase()){
             case "TAB":
            	 element.sendKeys(Keys.TAB);
            	 break;
             case "BACKSPACE":
            	 element.sendKeys(Keys.BACK_SPACE);
            	 break;
             case "CLEAR":
            	 element.sendKeys(Keys.CLEAR);
            	 break;
             case "CANCEL":
            	 element.sendKeys(Keys.CANCEL);
            	 break;
             case "ENTER":
            	 element.sendKeys(Keys.ENTER);
            	 break;
		}
    }	
		
	//Step definition to verify given element contains given partial text message - Can be verified to notice error messages 
	@And("^I notice (.*) contains \"(.*)\"$")
	public void i_notice_text(String locator, String partialText)
	{
		try {
			WebElement element = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
//			Assert.assertTrue(element.getAttribute("innerText").toLowerCase().contains(partialText.toLowerCase()) || element.getAttribute("value").toLowerCase().contains(partialText.toLowerCase()) , locator +" contains " + partialText);
			Assert.assertTrue(element.getAttribute("innerText").toLowerCase().contains(partialText.toLowerCase()), locator +" contains " + partialText);
			Reporter.log("Verified presence of message that contains '"+ partialText + "'");
		} catch (Exception e) {
			predefSteps.takeScreenshot("TestNGSC");
			Assert.assertTrue(false);
		}	
	}
	
	@And("^I verify the dialog popup (.*) open on page$")
	public void i_see_dialog_pop_up_is_open(String locator)
	{
		WebElement element = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		Assert.assertTrue(element.isDisplayed(), locator + " is not seen on page");
		Reporter.log(locator + " is verified for its presence");
	}
	
	@When("^I wait (\\d+)$")
	public void wait(int time) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	   try
	   {
		 Thread.sleep(time);  
	   }
	   catch (Exception E)
	   {
		   Reporter.log(E.getMessage());
	   }
	}
	
	@Given("^I open the application$")
	public void i_open_application()
	{
		Reporter.log("*********************************************************");
		predefSteps.navigate_to_env_url();
		System.out.println("*****Application loaded");
	}
	
	@And("^I mouseover on (.*)$")
	public void i_hover_on(String locator) throws Throwable {

	 WebElement web_Element = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
	 predefSteps.hoverOnElement(web_Element);
	 predefSteps.waitSeconds(1000);
	 Reporter.log("Mouse hovered on "+ locator);
	}

	@When("^I check (.*) checkbox$")
	public void i_check_element(String locator){
	 WebElement ele= predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
	 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
	 js.executeScript("arguments[0].click();", ele);
	}

	@Then("^(.*) checkbox is checked$")
	public void element_checked(String locator){
		WebElement ele= predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		Assert.assertTrue(ele.isSelected(), locator+" is not checked");
	}
			
	@When("^I select \"([^\']*)\" from (.*)$")
	public void select_from_dropdown(String option, String locator) 
	{
		try
		{
			WebElement dropdownlist = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
	       
			  if(dropdownlist.getTagName().equalsIgnoreCase("Select"))
			  {
				  Select select = new Select(dropdownlist);
//		          select.selectByVisibleText(option);
				  select.selectByValue(option);
		          Reporter.log("Selected " + option + " from locator");
			  }
			  else
			  {
				  dropdownlist.click();
				  List<WebElement> listItems = dropdownlist.findElements(By.xpath(".//ul/li"));
				 
				  for(WebElement item:listItems)
				  {
					  if(item.getAttribute("innerText").equalsIgnoreCase(option) || item.getAttribute("value").equalsIgnoreCase(option))
					  {
						  item.click();
						  break;
					  }
				  }
				  /*for(int i=0; i<listItems.size(); i++)
				  {
					  if(listItems.get(i).getAttribute("innerText").equalsIgnoreCase(option))
					  {
						  listItems.get(i).click();
						  break;
					  }
				  }*/
			  }
		}
		catch(Exception e)
		{
			predefSteps.takeScreenshot("select from listbox failed");
			Assert.assertTrue(false,"Select from listbox failed due to exception - "+ e.getMessage());
		}
	}
	
	@Then("^selected value in (.*) is \"([^\']*)\"$")
	public void slected_value_from_dropdown(String locator, String optionSelected) {
		WebElement dropdownlist = predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		
			Select select = new Select(dropdownlist);
	        
	        String actualSelectedValue=select.getFirstSelectedOption().getAttribute("innerText").trim().toLowerCase();	   
	        Assert.assertEquals(actualSelectedValue, optionSelected.toLowerCase());
		
	}
	
	@Then("^character count is more than (\\d+) in (.*)$")
	public void character_count_morethan(int count, String locator) {
	 WebElement ele=predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));  
	 Assert.assertTrue(ele.getAttribute("value").length() > count, "fieldlenght is not more than "+count);
	}
	
	@When("^I enter more than (\\d+) characters in (.*)$")
	public void i_enter_character_count(int count,String locator) {
		WebElement ele= predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		ele.sendKeys(Keys.chord(Keys.CONTROL,"a",Keys.DELETE));
		ele.click();
		for(int i=1;i<=count+1;i++) {
			ele.sendKeys("a");
		}		
		
	}
	
	@Then("^character count is less than (\\d+) in (.*)$")
	public void character_count_lessthan(int count, String locator) {
	 WebElement ele=predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));  
	 Assert.assertTrue(ele.getAttribute("value").length() < count, "fieldlenght is not less than "+count);
	}
	
	@When("^I enter less than (\\d+) characters in (.*)$")
	public void i_enter_less_character_count(int count,String locator) {
		WebElement ele= predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		ele.sendKeys(Keys.chord(Keys.CONTROL,"a",Keys.DELETE));
		ele.click();
		for(int i=1;i<count;i++) {
			ele.sendKeys("b");
		}		
		
	}
	
	@Then("^character count is (\\d+) in (.*)$")
	public void character_count(int count, String locator) {
	 WebElement ele=predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));  
	 Assert.assertTrue(ele.getAttribute("value").length()==count, "fieldlenght excceds "+count);
	}

	@And("^I clear cookies$")
	public void clear_cookies()
	{
		driver.manage().deleteAllCookies();
		Reporter.log("Delete all cookies");
	}
	
	@When("^I scroll down to footer$")
	public void i_scroll_down_tofooter()
	{
		JavascriptExecutor jse = ((JavascriptExecutor) driver);
		jse.executeScript("window.scrollTo(0, document.body.scrollHeight)");
		
	}
	
	@When("^I clicked (.*)$")
	public void jsclick(String locator) {
		WebElement ele= predefSteps.findByElement(EnvironmentVals.getLocatorProperties().getProperty(predefSteps.formatLocator(locator)));
		 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
		 js.executeScript("arguments[0].click();", ele);
	} 
	
}
