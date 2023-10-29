package stepDefinitions;

import com.aventstack.extentreports.Status;

import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;

public class LoginPageStepDefinition {
	
	@And("^I log in using \"(.*)\" in LoginPage$")
	public void login(String rowRef) 
	{
		ObjectsContainer.getObjectsContainer().getLoginPage().login(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Logged in");
	}
	
	@And("^I log in using page methods by \"(.*)\" in LoginPage$")
	public void loginUsingPageMethods(String rowRef) 
	{
		ObjectsContainer.getObjectsContainer().getLoginPage().loginUsingPageMethods(rowRef);
		CucumberHooks.test.log(Status.PASS, rowRef+" Logged in");
	}
	
}
