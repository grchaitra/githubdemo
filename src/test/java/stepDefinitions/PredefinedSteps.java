package stepDefinitions;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.io.FileHandler;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.Reporter;

import com.aventstack.extentreports.Status;

import driverManager.TLDriverFactory;
import utilities.EnvironmentVals;
import utilities.FileReaderUtils;

public class PredefinedSteps
{
	WebDriver driver;
	public HashMap<String, String> dataRow;
	
	public PredefinedSteps(WebDriver driver)
	{
		this.driver = TLDriverFactory.getDriver();
	}
	public String[] tokenizer(String rowRef, String whatToRead)
	{
		HashMap<String, String> product = readDataFromExcelSheet(rowRef, "ProductDetails");
		String temp = product.get(whatToRead);
		return temp.split(";");
	}
	
	public void navigate_to_env_url()
	{
		try
		{
			driver.manage().deleteAllCookies();
			driver.get(EnvironmentVals.getEnvInstance().getEnvURL());
		}
		catch(Exception e)
		{
			CucumberHooks.setUpObject.except = e;
			Reporter.log("Open application has failed." + e.getMessage());
		}
	}
	public void waitForElementVisibility(WebElement element)
	{
		TLDriverFactory.getWait(driver, 40).until(ExpectedConditions.visibilityOf(element));
	}
	public void jsClick(WebElement element)
	{
		waitSeconds(2000);
		JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
		js.executeScript("arguments[0].click();", element);	
		
	}
	public void clickWithoutWait(WebElement element)
	{
		JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		jsClick(element);
	}
	public  void clickOnElement(WebElement ele) {

		try {
			ele = new WebDriverWait(driver, 30).until(ExpectedConditions.visibilityOf(ele));
			JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
			js.executeScript("arguments[0].scrollIntoView(true);", ele);
			ele.click();

		} catch (Exception e) {
				CucumberHooks.setUpObject.except = e;
				if (e.getMessage().toLowerCase().contains("could not be scrolled into view")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].click();", ele);	
				}
				else if (e.getMessage().toLowerCase().contains("element click intercepted")) 
				{
			
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].click();", ele);	
				} 
				else if (e.getMessage().toLowerCase().contains("element not interactable")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].click();", ele);	
				}
				else if (e.getMessage().toLowerCase().contains("element is not clickable")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].click();", ele);	
				}
				else if (e.getMessage().toLowerCase().contains("script timeout")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].click();", ele);	
				}
				else if (e.getMessage().toLowerCase().contains("waiting for visibility of")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 clickWithoutWait(ele);	
				}
				else if (e.getMessage().toLowerCase().contains("element is not attached to the page document")) 
				{
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 clickWithoutWait(ele);	
				}
				else 
				{
					CucumberHooks.setUpObject.except = e;
					Assert.assertTrue(false,"Test is Failed due to exception occured in the method click on element for the locator due to  " + e.getMessage());
				}

		}	

	}
	public  void typeinEditbox(WebElement ele, String valuetoType ) 
	{
		try {
			  ele = TLDriverFactory.getWait(driver, 30).until(ExpectedConditions.visibilityOf(ele));
			  JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
			  js.executeScript("arguments[0].scrollIntoView(true);", ele);
			  ele.clear();
			  ele.sendKeys(Keys.chord(Keys.CONTROL,"a",Keys.DELETE));

			  if(!valuetoType.isEmpty()) {
			   ele.sendKeys(valuetoType);
			   ele.sendKeys(Keys.TAB);
			  }
			 } 
			catch (Exception e) {
				CucumberHooks.setUpObject.except = e;
				if (e.getMessage().toLowerCase().contains("could not be scrolled into view")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].value="+valuetoType+";", ele);	
				}
				else if (e.getMessage().toLowerCase().contains("element not interactable")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].value="+valuetoType+";", ele);	
				}
				else if (e.getMessage().toLowerCase().contains("Unable to locate element")) 
				{
					
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].value="+valuetoType+";", ele);	
				}
				else if (e.getMessage().toLowerCase().contains("waiting for visibility of")) 
				{
					 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
					 js.executeScript("arguments[0].value="+valuetoType+";", ele);	
				}
				else 
				{
					Assert.assertTrue(false,"Test is Failed due to exception occured in the method type on element for the locator due to  " + e.getMessage());
				}
			 }  

	}
	public boolean i_see_element(WebElement ele)
	{
		waitForElementVisibility(ele);
		JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
		js.executeScript("arguments[0].scrollIntoView(true);", ele);
		if(ele.isDisplayed())
		{
			return true;
		}
		else
		{
			return false;	
		}
	}
	
	public  WebElement findByElement(String locatorPath)
	{
		
		WebElement elm = null;
		By locate = null;
		String arr[] = locatorPath.split(",", 2);
		String identiFyBy = arr[0];
		String locator = arr[1];
				
		try
		{
			if(identiFyBy.equalsIgnoreCase("xpath"))
				  locate = By.xpath(locator);
			else if(identiFyBy.equalsIgnoreCase("id"))
				 locate = By.id(locator);
			else if(identiFyBy.equalsIgnoreCase("name"))
				 locate = By.name(locator);
			else if(identiFyBy.equalsIgnoreCase("css"))
				 locate = By.cssSelector(locator);
			else if(identiFyBy.equalsIgnoreCase("className"))
				 locate = By.className(locator);
			else if(identiFyBy.equalsIgnoreCase("tagName"))
				 locate = By.tagName(locator);
			else if(identiFyBy.equalsIgnoreCase("linkText"))
				 locate = By.linkText(locator);
			else if(identiFyBy.equalsIgnoreCase("partialLinkText"))
				 locate = By.partialLinkText(locator);
			
			//elm = getDriver().findElement(locate);
			WebDriverWait wait = new WebDriverWait(driver, 60);
			return wait.until(ExpectedConditions.presenceOfElementLocated(locate));
			//elm = driver.findElement(locate);
		}
		catch (Exception e)
		{
			//logs.debug(MessageFormat.format(LoggingMsg.FORMATTED_ERROR_MSG, e.getMessage()));
			CucumberHooks.setUpObject.except = e;
			Assert.assertTrue(false,"Test is Failed due to exception occured in the method findByElement for the locator "	+ locator + "  due to  " + e.getMessage());
			return null;
		} 
		//return elm;					
	}
	
	public boolean findElementNotPresent(WebElement element)
	{
		try
		{
			if(element.isDisplayed())
			{
				return true;
			}
			return false;
		}
		catch(Exception e)
		{
			return false;
		}
		
		
	}
	
	public Boolean findElementNotPresent(String locatorPath)
	{
		boolean flag;
		WebElement elm = null;
		By locate = null;
		String arr[] = locatorPath.split(",", 2);
		String identiFyBy = arr[0];
		String locator = arr[1];
				
		try
		{
			if(identiFyBy.equalsIgnoreCase("xpath"))
				  locate = By.xpath(locator);
			else if(identiFyBy.equalsIgnoreCase("id"))
				 locate = By.id(locator);
			else if(identiFyBy.equalsIgnoreCase("name"))
				 locate = By.name(locator);
			else if(identiFyBy.equalsIgnoreCase("css"))
				 locate = By.cssSelector(locator);
			else if(identiFyBy.equalsIgnoreCase("className"))
				 locate = By.className(locator);
			else if(identiFyBy.equalsIgnoreCase("tagName"))
				 locate = By.tagName(locator);
			else if(identiFyBy.equalsIgnoreCase("linkText"))
				 locate = By.linkText(locator);
			else if(identiFyBy.equalsIgnoreCase("partialLinkText"))
				 locate = By.partialLinkText(locator);
			
			elm = driver.findElement(locate);
			flag = true;
		}
		catch (Exception e)
		{
			//takeScreenshot("WebElementDoesNotExists");
			//Assert.assertTrue(true,"Test is Failed due to exception occured in the method Find element not present for the locator "	+ locator + "  due to  " + e.getMessage());
			flag = false;
		}
	
		return flag;
	}
    
    public  List<WebElement> findByElements(String locatorPath)
	{
		java.util.List<WebElement> elms = null;
		By locate = null;
		String arr[] = locatorPath.split(",", 2);
		String identiFyBy = arr[0];
		String locator = arr[1];
		try
		{
			if(identiFyBy.equalsIgnoreCase("xpath"))
				  locate = By.xpath(locator);
			else if(identiFyBy.equalsIgnoreCase("id"))
				 locate = By.id(locator);
			else if(identiFyBy.equalsIgnoreCase("name"))
				 locate = By.name(locator);
			else if(identiFyBy.equalsIgnoreCase("css"))
				 locate = By.cssSelector(locator);
			else if(identiFyBy.equalsIgnoreCase("className"))
				 locate = By.className(locator);
			else if(identiFyBy.equalsIgnoreCase("tagName"))
				 locate = By.tagName(locator);
			else if(identiFyBy.equalsIgnoreCase("linkText"))
				 locate = By.linkText(locator);
			else if(identiFyBy.equalsIgnoreCase("partialLinkText"))
				 locate = By.partialLinkText(locator);
		
			//elms = getDriver().findElements(locate);
				WebDriverWait wait = new WebDriverWait(driver, 60);
				return wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(locate));
				
			//	elms = driver.findElements(locate);

			}
			catch (Exception e)
			{
				//takeScreenshot("WebElementDoesNotExists");
				Assert.assertTrue(false,"Test is Failed due to exception occured in the method findByElements for the locator "	+ locator + "  due to  " + e.getMessage());
				return null;
			} 			
		//	return elms;				
	}
    
    public  void clickOnElement(String locatorPath) {
		
    	try {
			if(!locatorPath.isEmpty())
			{
				WebElement web_Element = findByElement(locatorPath);
				if(web_Element != null)
					{
					 web_Element.click();
					 
					}
					
				else
					Reporter.log("Click on "+ locatorPath+ " has failed as the element was not found");
			}
			
		} catch (Exception e) {
			if (e.getMessage().contains("could not be scrolled into view")) 
			{
				WebElement web_Element = findByElement(locatorPath);
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", web_Element);	
			} else 
			{
				//takeScreenshot("WebElementDoesNotExists");
				Assert.assertTrue(false,"Test is Failed due to exception occured in the method click on element for the locator "	+ locatorPath + "  due to  " + e.getMessage());
			}
			
		}	

	}
	
    public void hoverOnElement(WebElement linktoHover)
    {
    	Actions act = new Actions(driver);
    	try
    	{
    		JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
			js.executeScript("arguments[0].scrollIntoView(true);", linktoHover);  
	    	act.moveToElement(linktoHover).perform();
	    	Reporter.log("Mouse hover action on the "+linktoHover+" is successful");
    	}
    	catch(Exception e)
    	{
    		CucumberHooks.setUpObject.except = e;
			Assert.assertTrue(false,"Test is Failed due to exception occured in the method hover on element for the link "	+ linktoHover + "  due to  " + e.getMessage());
    		Reporter.log("Mouse hover action on the "+linktoHover+" is not successful");
    	}
    }
    
	public  void typeinEditbox(String locatorPath, String valuetoType) 
	{
		try {
			  WebElement web_Element = findByElement(locatorPath);
			  web_Element.clear();
			  web_Element.sendKeys(Keys.chord(Keys.CONTROL,"a",Keys.DELETE));

			  if(!valuetoType.isEmpty()) {
			   web_Element.sendKeys(valuetoType);
			   web_Element.sendKeys(Keys.TAB);
			  }
			 } 
			catch (Exception e) {
				//takeScreenshot("WebElementDoesNotExists");
				//Assert.assertTrue(false,"Test is Failed due to exception occured in the method typeinEditbox on element "	+ locatorPath + "  due to  " + e.getMessage());
			 }  

	}
	public void selectDropDownWithoutWait(WebElement element, String optionToSelect)
	{
		WebElement ele = null;
		try
		{
			JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
			js.executeScript("arguments[0].scrollIntoView(true);", element);
			jsClick(element);
			ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
			ele.click();
			
		}
		catch (Exception e) {
			CucumberHooks.setUpObject.except = e;
			if (e.getMessage().toLowerCase().contains("could not be scrolled into view")) 
			{
				
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			}
			else if (e.getMessage().toLowerCase().contains("element click intercepted")) 
			{
		
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			
			} 
			else if (e.getMessage().toLowerCase().contains("element not interactable")) 
			{
				
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			
			}
			else if (e.getMessage().toLowerCase().contains("element is not clickable")) 
			{
				
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			
			}
			else 
			{
				CucumberHooks.setUpObject.except = e;
				 Assert.assertTrue(false,"Test is Failed due to exception occured in the method selectFromDropDown on element for the locator due to  " + e.getMessage());
			}
		}

		
	}
	public void selectFromDropDown(WebElement element, String optionToSelect)
	{
		WebElement ele = null;
		try {
			JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
			js.executeScript("arguments[0].scrollIntoView(true);", element);
			clickOnElement(element);
			ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
			ele.click();
		} catch (Exception e) {
			CucumberHooks.setUpObject.except = e;
			if (e.getMessage().toLowerCase().contains("could not be scrolled into view")) 
			{
				
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			}
			else if (e.getMessage().toLowerCase().contains("element click intercepted")) 
			{
		
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			
			} 
			else if (e.getMessage().toLowerCase().contains("element not interactable")) 
			{
				
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			
			}
			else if (e.getMessage().toLowerCase().contains("element is not clickable")) 
			{
				
				 JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
				 js.executeScript("arguments[0].click();", element);	
				 ele = TLDriverFactory.getDriver().findElement(By.xpath("//li[text()=\'"+optionToSelect+"\']"));
				 jsClick(ele);
			
			}
			else 
			{
				CucumberHooks.setUpObject.except = e;
				 Assert.assertTrue(false,"Test is Failed due to exception occured in the method selectFromDropDown on element for the locator due to  " + e.getMessage());
			}

		}
	}
	public void selectOption(WebElement element, String valuetoSelect)
	{
		JavascriptExecutor js= (JavascriptExecutor)TLDriverFactory.getDriver(); 
		js.executeScript("arguments[0].scrollIntoView(true);", element);
		TLDriverFactory.getWait(driver, 30).until(ExpectedConditions.visibilityOf(element));
		System.out.println(valuetoSelect);
		Select sel = new Select(element);
		System.out.println(valuetoSelect);
		sel.selectByVisibleText(valuetoSelect);
		waitSeconds(2000);
	}
	
	public void waitSeconds(long sec)
	{
		try {
			Thread.sleep(sec);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public HashMap<String, String> readDataFromExcelSheet(String rowReference, String SheetName)
	{
		
		FileReaderUtils fls = new FileReaderUtils();
		dataRow = fls.ReadDataFromRow(EnvironmentVals.getEnvInstance().getTestDataPath(), SheetName, rowReference);
		if(dataRow != null)
			return dataRow;
		else
		{
			Reporter.log("Specified data row could not be reached.");
			return null;
		}
	}
	
	public void closeBrowserDriver()
	{
		driver.close();
		//driver.quit();
	}
	public String takeScreenshot(String scenario)
	{
		String strScreenshotsFolder = EnvironmentVals.getEnvInstance().getConfig().getProperty("screenshots");
		TakesScreenshot shot;
		shot=(TakesScreenshot)TLDriverFactory.getDriver();

		System.out.println(scenario);

		File src=shot.getScreenshotAs(OutputType.FILE);
		DateFormat dateFormat = new SimpleDateFormat("yyyy_dd_MMM_HH_mm_ss");
		Date date = new Date();
		String getCurrentDate = dateFormat.format(date);
		System.out.println("****getCurrentDate:- "+ getCurrentDate);
		String path = strScreenshotsFolder + "/" + scenario + "_"
				+ getCurrentDate + ".png";

		File eleFile=new File(path);
		try {
			FileHandler.copy(src, eleFile);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return eleFile.getAbsolutePath();
	}
	public String formatLocator(String locator)
	{
		String locatorString;
		 if(TLDriverFactory.browseris.contains("mobile"))
		      locatorString=locator.concat("_mobile").replaceAll(" ", "_").toLowerCase();
		 else
		      locatorString=locator.replaceAll(" ", "_").toLowerCase();
		 
		 return locatorString;
	}
	
	public void keyPressEvent(String strKey, String locatorPath)
	{
		try
		{
		WebElement	element = findByElement(locatorPath);
		
		switch(strKey.toUpperCase()){
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
             case "DELETE":
            	 element.sendKeys(Keys.DELETE);
            	 break;
             case "ENTER":
            	 element.sendKeys(Keys.ENTER);
            	 break;
			}
		}
		catch (Exception e) {
		//	takeScreenshot("WebElementDoesNotExists");
			Assert.assertTrue(false,"Test is Failed due to exception occured in the method keyPressEvent on element for the locator "	+ locatorPath + "  due to  " + e.getMessage());
		}
	}
	
	public String readAttribute(String locatorPath, String attributeType)
	{
		try
		{
		WebElement web_Element = findByElement(locatorPath);
		
        String attribute = web_Element.getAttribute(attributeType);
        return attribute;
		}
		catch(Exception e)
		{
			Reporter.log("Reading attribute of the locator failed " + e.getMessage());
			return null;
		}
	}


	public int generateRandomNumber(int maxnum)
	{
		double randomDouble = Math.random();
		randomDouble = randomDouble * maxnum + 1;
		int randomInt = (int) randomDouble;
		return randomInt;
	}
	
	public String formateDecimalToDouble(String value)
	{
		double doubleValue = Double.parseDouble(value);
		DecimalFormat formater = new DecimalFormat("#0.00");
		String formatedValue = formater.format(doubleValue);
		return formatedValue;
	}
	
	public String formateDecimalToDouble(double value)
	{
		DecimalFormat formater = new DecimalFormat("#0.00");
		String formatedValue = formater.format(value);
		return formatedValue;
	}
	
	public String getSystemDate()
	{
		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		Calendar cal = Calendar.getInstance();
		String systDate = dateFormat.format(cal.getTime());
		System.out.println("*********systDate:-"+systDate);
		return systDate;
	}
	
	public void writeToTextFile(String orderId, String scenarioName) throws IOException
	{
		String srcPath = System.getProperty("user.dir");
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		Calendar cal = Calendar.getInstance();
		String systDate = dateFormat.format(cal.getTime());
		
		FileWriter fw = new FileWriter(srcPath+"\\src\\test\\java\\config\\OrderId.txt", true);
		BufferedWriter bw = new BufferedWriter(fw);
		PrintWriter out = new PrintWriter(bw);
		out.println(systDate+"  --> "+orderId+"  --> "+ scenarioName);
		out.close();
	}
	
	
}
