package pageClasses;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class MyAccountDashBoard {
	
	public MyAccountDashBoard() {
		
		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
	}

}
