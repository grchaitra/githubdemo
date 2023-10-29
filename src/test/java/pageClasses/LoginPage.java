package pageClasses;

import java.util.HashMap;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import io.cucumber.java.en.And;
import stepDefinitions.PredefinedSteps;

public class LoginPage{
	public PredefinedSteps predef; 
	public LoginPage() {
		
		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());
	}
	@FindBy(css = "button[class='slds-button alternative_button']")
	public WebElement createAccountButton;
	
	@FindBy(css = "input[class='input sfdc_usernameinput sfdc input']")
	public WebElement usernameOrEmail;
	
	@FindBy(css = "button[class='slds-button slds-button_neutral sfdc_button']")
	public WebElement nextButton;
	
	@FindBy(css = "input[class='input sfdc_passwordinput sfdc input']")
	public WebElement password;
	
	@FindBy(css = "button[class='slds-button slds-button_neutral sfdc_button']")
	public WebElement loginButton;
	
	public void login(String rowRef) {
		HashMap<String, String> loginData = predef.readDataFromExcelSheet(rowRef, "LoginData");
		predef.typeinEditbox(usernameOrEmail, loginData.get("Email"));
		predef.clickOnElement(nextButton);
		//predef.waitSeconds(15000);
		predef.typeinEditbox(this.password, loginData.get("Password"));
		predef.clickOnElement(loginButton);
	}
	
	public void clickLoginButton()
	{
		predef.clickOnElement(loginButton);
	}
	
	public void typePassword(String password)
	{
		predef.typeinEditbox(this.password, password);
	}
	
	public void typeUsernameOrEmail(String email)
	{
		predef.typeinEditbox(usernameOrEmail, email);
	}
	
	public void clickNextButton() 
	{
		predef.clickOnElement(nextButton);
	}
	
	public void loginUsingPageMethods(String rowRef)
	{
		HashMap<String, String> loginData = predef.readDataFromExcelSheet(rowRef, "LoginData");
		this.typeUsernameOrEmail(loginData.get("Email"));
		this.clickNextButton();
		this.typePassword(loginData.get("Password"));
		this.clickLoginButton();
	}
}

