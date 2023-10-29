package pageClasses;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.testng.Assert;

import com.aventstack.extentreports.Status;

import objectsContainer.ObjectsContainer;
import stepDefinitions.CucumberHooks;
import stepDefinitions.PredefinedSteps;

public class CreateAccountPage {
	PredefinedSteps predef;

	public CreateAccountPage() 
	{
		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());
	}
	
	@FindBy(css = "input[placeholder='First Name']")
	public WebElement firstName;
	
	@FindBy(css = "input[placeholder='Last Name']")
	public WebElement lastName;
	
	@FindBy(css = "input[placeholder='Email']")
	public WebElement emailField;
	
	@FindBy(css = "input[placeholder='Create Password']")
	public WebElement createPassword;
	
	@FindBy(css = "input[placeholder='Confirm Password']")
	public WebElement confirmPassword;
	
	@FindBy(css = "button[class='slds-button slds-button--neutral sfdc_button uiButton']")
	public WebElement creatAccountButton;
	
	public void createAccount(String rowRef) throws IOException 
	{
		predef.clickOnElement(ObjectsContainer.getObjectsContainer().getHomePage().accountLink);
		predef.clickOnElement(ObjectsContainer.getObjectsContainer().getHomePage().loginOrCreateAccoutButton);
		predef.clickOnElement(ObjectsContainer.getObjectsContainer().getLoginPage().createAccountButton);
		
		HashMap<String, String> account = predef.readDataFromExcelSheet(rowRef, "NewAccountDetails");
		predef.typeinEditbox(firstName, account.get("FirstName"));
		predef.typeinEditbox(lastName, account.get("LastName"));
		String email = account.get("Email")+System.currentTimeMillis()+"@gmail.com";
		predef.typeinEditbox(emailField, email);
		predef.typeinEditbox(createPassword, "Password@123");
		predef.typeinEditbox(confirmPassword, "Password@123");
		
		predef.clickOnElement(creatAccountButton);
		if(predef.i_see_element(ObjectsContainer.getObjectsContainer().getHomePage().accountLink1))
		{
			CucumberHooks.test.log(Status.PASS, "Accout is created");
		}
		else
		{
			Assert.assertTrue(false);
		}
		saveEmail(email);
	}
	public void saveEmail(String email) throws IOException
	{
		String srcPath = System.getProperty("user.dir");
		FileWriter fw = new FileWriter(srcPath+"\\src\\test\\java\\config\\Emails.txt", true);
		BufferedWriter bw = new BufferedWriter(fw);
		PrintWriter out = new PrintWriter(bw);
		out.println(email);
		out.close();
	}
	
}