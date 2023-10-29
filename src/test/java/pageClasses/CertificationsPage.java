package pageClasses;

import java.util.HashMap;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import driverManager.TLDriverFactory;
import stepDefinitions.PredefinedSteps;

public class CertificationsPage {
	PredefinedSteps predef;

	public CertificationsPage() {

		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());

	}
	@FindBy(css = "div[class='search-tabs'] li[class='article-label certificate-label'] span")
	public WebElement certificateId;
	
	@FindBy(xpath = "//input[@id='dwfrm_certificate_certnumber']")
	public WebElement certificateIdNumber;
	
	@FindBy(xpath = "(//button[@class='certificatesubmit button-fancy-large'])[3]")
	public WebElement find3;
	
	@FindBy(xpath = "(//button[@class='certificatesubmit button-fancy-large'])[1]")
	public WebElement find1;
	
	@FindBy(css = "input[class='input-text email required']")
	public WebElement certificateEmail1; 
	
	@FindBy(css = "input[class='input-text email required error']")
	public WebElement certificateEmail2;
	
	
	public WebElement classCheckbox; 
	public String classCheckboxXpath = "//div//input[@id='id1'][@type='checkbox'][@class='input-checkbox eachcert']";
	
	@FindBy(css = "button[id='add-to-cartcertificate']")
	public WebElement certificateAddToCart;
	
	public void searchCertificate(HashMap<String, String> data)
	{
		predef.waitSeconds(2000);
		predef.clickOnElement(certificateId);
		predef.typeinEditbox(certificateIdNumber, data.get("ProductID"));
		predef.clickOnElement(find3);
		predef.waitSeconds(3000);
		classCheckbox = TLDriverFactory.getDriver().findElement(By.xpath(classCheckboxXpath));
		predef.clickWithoutWait(classCheckbox);
		predef.waitSeconds(3000);
		predef.clickOnElement(certificateAddToCart);	
	}
	
	public void searchCertificateForRegisteredUser(HashMap<String, String> data)
	{
		certificateEmail1.sendKeys(Keys.chord(Keys.CONTROL,"a",Keys.DELETE));
		certificateEmail1.sendKeys(Keys.TAB);
		predef.typeinEditbox(certificateEmail2, data.get("Email"));
		predef.clickOnElement(find1);
		predef.waitSeconds(4000);
		classCheckbox = TLDriverFactory.getDriver().findElement(By.xpath(classCheckboxXpath));
		predef.clickWithoutWait(classCheckbox);
		predef.waitSeconds(3000);
		predef.clickOnElement(certificateAddToCart);	
	}

}
