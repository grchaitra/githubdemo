package stepDefinitions;

import java.io.IOException;

import io.cucumber.java.en.And;
import objectsContainer.ObjectsContainer;

public class CreateAccountStepDefintion 
{
	@And("^I create account using \"(.*)\"$")
	public void createAccount(String rowRef) throws IOException
	{
		ObjectsContainer.getObjectsContainer().getCreateAccountPage().createAccount(rowRef);
	}
}
