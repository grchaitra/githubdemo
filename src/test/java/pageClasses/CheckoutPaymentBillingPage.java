package pageClasses;

import java.util.HashMap;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import driverManager.TLDriverFactory;
import io.cucumber.java.en.And;
import stepDefinitions.PredefinedSteps;

public class CheckoutPaymentBillingPage {
	
	PredefinedSteps predef;

	public CheckoutPaymentBillingPage() {

		PageFactory.initElements(driverManager.TLDriverFactory.getDriver(), this);
		predef = new PredefinedSteps(driverManager.TLDriverFactory.getDriver());
	}
	
	public WebElement sameShippingAndBillingAddress;
	
	By sameShippingBillingAddress = By.cssSelector("input[id='dwfrm_singleshipping_shippingAddress_useAsBillingAddress']");
	
	@FindBy(xpath = "(//div[@class='shipping-addr-form']//input)[1]")
	public WebElement shippingFirstName;
	
	@FindBy(xpath = "(//div[@class='shipping-addr-form']//input)[2]")
	public WebElement shippingLasttName;
	
	@FindBy(xpath = "(//div[@class='shipping-addr-form']//input)[3]")
	public WebElement shippingStreeAddress;
	
	@FindBy(xpath = "(//div[@class='shipping-addr-form']//input)[5]")
	public WebElement shippingZipCode;
	
	@FindBy(xpath = "(//div[@class='shipping-addr-form']//input)[7]")
	public WebElement shippingCity;
	
	@FindBy(xpath = "//div[@class='sameasbilling']//div[text()='STATE']//following-sibling::ul")
	public WebElement shippingState;
	
	@FindBy(xpath = "(//div[@class='shipping-addr-form']//input)[8]")
	public WebElement shippingPhoneNumber;
	
	@FindBy(css = "div[class='payment-information'] input[id='is-PayPal']")
	public WebElement paypalRadio;

	@FindBy(css = "div[class='student_info '] input[id='dwfrm_billing_billingAddress_email_stdemailAddress']")
	public WebElement studentEmailAddress;
	
	@FindBy(css = "div[class='student_info '] input[id='dwfrm_singleshipping_stdFirstName']")
	public WebElement studentFirstName;
	
	@FindBy(css = "div[class='student_info '] input[id='dwfrm_singleshipping_stdLastName']")
	public WebElement studentLastName;
	
	@FindBy(css = "div[id = 'wrapper'] input[class='input-text allownumeric  required']")
	public WebElement digipaymentCardNumber;
	
	@FindBy(css = "div[class='payment-information'] input[class='input-text allownumeric  required valid']")
	public WebElement paymentCardNumber;
	
	@FindBy(css = "div[id = 'wrapper'] div[rel='Exp. Month']+ul")
	public WebElement digipaymentExpMonth; 
	
	@FindBy(css = "div[id = 'wrapper'] div[class='selected-option']+ul")
	public WebElement paymentExpMonth; 
	
	@FindBy(how = How.CSS, using = "div[id = 'wrapper'] div[rel='Exp. Month']+ul li")
	List<WebElement> months;
	
	public WebElement digipaymentExpYear; 
	public String expYearCssSelector = "//div[@id = 'wrapper']//div[text()='EXP. Year']//following-sibling::ul";
	
	@FindBy(xpath = "(//div[@id = 'wrapper']//div[@class='selected-option']//following-sibling::ul)[2]")
	public WebElement paymentExpYear; 
	public String expYearSelector = "(//div[@id = 'wrapper']//div[@class='selected-option']//following-sibling::ul)[2]";
	
	
	@FindBy(how = How.CSS, using = "div[id = 'wrapper'] div[rel='Exp. Year']+ul li")
	List<WebElement> years;
	
	@FindBy(css = "div[id = 'wrapper'] input[class='input-text allownumeric required']")
	public WebElement digipaymentCodeCVN;
	
	@FindBy(xpath = "(//div[@class='payment-information']//input)[8]")
	public WebElement paymentCodeCVN;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_firstName")
	public WebElement digiBillingFirstName;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_firstName")
	public WebElement classBillingFirstName;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_lastName")
	public WebElement digiBillingLastName;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_lastName")
	public WebElement classBillingLastName;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_Email")
	public WebElement digiBillingEmail;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_Email")
	public WebElement classBillingEmail;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_address1")
	public WebElement digiBillingStreetAddress;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_address1")
	public WebElement classBillingStreetAddress;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_postal")
	public WebElement digiBillingZipCode;

	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_postal")
	public WebElement classBillingZipCode;

	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_city")
	public WebElement digiBillingCity;
	
	@FindBy(css = "#dwfrm_billing_billingAddress_addressFields_city")
	public WebElement classBillingCity;
	
	@FindBy(css = "div[class='form-row state-row required'] div[rel='STATE']+ul[class='selection-list']")
	public WebElement digiBillingState;
	
	@FindBy(css = "div[class='form-row state-row required'] div[rel='STATE']+ul[class='selection-list']")
	public WebElement classBillingState;
	
	@FindBy(xpath = "//div[@class='selected-option show-icon']//following-sibling::ul")
	public WebElement billingState;
	
	@FindBy(css = "input[class='input-text allownumeric billingphone phone required']")
	public WebElement digiBillingPhoneNumber;
	
	@FindBy(css = "input[class='input-text allownumeric billingphone phone required']")
	public WebElement classBillingPhoneNumber;
	
	@FindBy(xpath = "(//input)[56]")
	public WebElement billingPhoneNumber;
	
	@FindBy(css = "input[class='input-text allownumeric billingphone phone required error']")
	public WebElement regBillingPhoneNumber;
	
	@FindBy(css = "div[class='billing-information'] div[class='form-row phone-row required'] input")
	public WebElement productRegBillingPhoneNumber;
	
	@FindBy(css = "button[class='button-fancy-large product-order checkoutbutton']")
	public WebElement digiPlaceOrder;
	
	@FindBy(css = "button[class='button-fancy-large place-order checkoutbutton minisummarycheckoutButton']")
	public WebElement orderTotalPlaceOrderAndRegister;
	
	@FindBy(css = "button[class='button-fancy-large place-order checkoutbutton']")
	public WebElement placeOrderAndRegister;
	
	@FindBy(css = "button[class='button-fancy-large product-order checkoutbutton minisummarycheckoutButton']")
	public WebElement digiOrderTotalPlaceOrder;
	
	@FindBy(css = "#couponYes")
	public WebElement digiCouponCodeYes;
	
	@FindBy(xpath = "(//li[text()='Select from Saved Addresses']//following-sibling::li)[1]")
	public List<WebElement> selectFromSavedBillingAddresses;
	
	public String sSelectFromSavedAddresses = "//li[text()='Select from Saved Addresses']//following-sibling::li[text()='Enter New Address']";
	@FindBy(xpath = "//li[text()='Select from Saved Addresses']//following-sibling::li[text()='Enter New Address']")
	public List<WebElement> selectFromSavedAddresses;
	
	public String sShippingSelectFromSavedAddresses = "//div[@class='shipping-section']//li[text()='Select from Saved Addresses']//following-sibling::li";
	@FindBy(xpath = "//div[@class='shipping-section']//li[text()='Select from Saved Addresses']//following-sibling::li")
	public List<WebElement> shippingSelectFromSavedAddresses;
	
	

	public void enterBillingAddressRegisteredUser(String rowRef)
	{
		if(useSameAddressForRegisteredUser()) 
		{
			  return;
		}
		enterBillingAddressForRegisteredUser(rowRef);
	}
	
	public void enterBillingAndShippingAddressRegisteredUser(String rowRef)
	{
		if(useSameAddressForRegisteredUser()) 
		{
			predef.clickWithoutWait(selectFromSavedBillingAddresses.get(0));
			selectFromSavedShippingAddress(rowRef);
			return;
		}
		else
		{
			useDifferentAddressForRegisteredUser(0);
			enterNewBillingAddress(rowRef);
			enterShippingAddress(rowRef);
		}	
	}
	
	public void selectFromSavedShippingAddress(String rowRef)
	{
		try
		{
			useDifferentAddressForRegisteredUser(1);
			enterShippingAddress(rowRef);
		}
		catch(Exception e)
		{
			
		}
	}
	public void enterNewBillingAddress(String rowRef) {
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		predef.typeinEditbox(classBillingFirstName, addressDetails.get("FirstName"));
		predef.typeinEditbox(classBillingLastName, addressDetails.get("LastName"));
		predef.typeinEditbox(classBillingStreetAddress, addressDetails.get("Address1"));
		predef.typeinEditbox(classBillingZipCode, addressDetails.get("PostalCode"));
		predef.typeinEditbox(classBillingCity, addressDetails.get("City"));
		predef.selectDropDownWithoutWait(billingState, addressDetails.get("State"));
		productRegBillingPhoneNumber.sendKeys(addressDetails.get("Phone"));
		if(predef.findElementNotPresent(regBillingPhoneNumber))
		{
			predef.typeinEditbox(regBillingPhoneNumber, addressDetails.get("Phone"));
		}
	}
	
	public void enterBillingAndShippingAddressRegisteredUserWithPayPal(String rowRef)
	{
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		predef.typeinEditbox(digiBillingFirstName, addressDetails.get("FirstName"));
		predef.typeinEditbox(digiBillingLastName, addressDetails.get("LastName"));
		predef.typeinEditbox(digiBillingStreetAddress, addressDetails.get("Address1"));
		predef.typeinEditbox(digiBillingZipCode, addressDetails.get("PostalCode"));
		predef.typeinEditbox(digiBillingCity, addressDetails.get("City"));
		predef.selectDropDownWithoutWait(billingState, addressDetails.get("State"));
		try
		{
			productRegBillingPhoneNumber.sendKeys(addressDetails.get("Phone"));
		}
		catch(Exception e)
		{
			predef.typeinEditbox(regBillingPhoneNumber, addressDetails.get("Phone"));
		}
		List<WebElement> shippingSelectFromSavedAddresses = TLDriverFactory.getDriver().findElements(By.xpath(sShippingSelectFromSavedAddresses));
		predef.clickWithoutWait(shippingSelectFromSavedAddresses.get(0));
	}
	public void enterBillingAddressForRegisteredUserForClassesWithCC(String rowRef)
	{
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		if(useSameAddressForRegisteredUser()) 
		{
			  return;
		}
		else
		{
			predef.typeinEditbox(digiBillingFirstName, addressDetails.get("FirstName"));
			predef.typeinEditbox(digiBillingLastName, addressDetails.get("LastName"));
			predef.typeinEditbox(digiBillingStreetAddress, addressDetails.get("Address1"));
			predef.typeinEditbox(digiBillingZipCode, addressDetails.get("PostalCode"));
			predef.typeinEditbox(digiBillingCity, addressDetails.get("City"));
			predef.selectDropDownWithoutWait(billingState, addressDetails.get("State"));
			predef.typeinEditbox(billingPhoneNumber, addressDetails.get("Phone"));
		}
	}
	public boolean useSameAddressForRegisteredUser()
	{
		try
		{
			List<WebElement> selectFromSavedBillingAddresses = TLDriverFactory.getDriver().findElements(By.xpath("(//li[text()='Select from Saved Addresses']//following-sibling::li)[1]"));
			if(predef.findElementNotPresent(selectFromSavedBillingAddresses.get(0))) 
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
	public boolean useDifferentAddressForRegisteredUser(int i)
	{
		if(predef.findElementNotPresent(selectFromSavedAddresses.get(i))) 
		{
			  predef.clickOnElement(selectFromSavedAddresses.get(i));
			  predef.waitSeconds(5000);
			  return true;
		}
		return false;
	}
	public void enterBillingAddressForRegisteredUserForClass(String rowRef)
	{
		if(useSameAddressForRegisteredUser())
		{
			return;
		}
		enterBillingAddressForClass(rowRef);
	}
	public void enterBillingAddressForClass(String rowRef)
	{
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		predef.typeinEditbox(classBillingFirstName, addressDetails.get("FirstName"));
		predef.typeinEditbox(classBillingLastName, addressDetails.get("LastName"));
		predef.typeinEditbox(classBillingStreetAddress, addressDetails.get("Address1"));
		predef.typeinEditbox(classBillingZipCode, addressDetails.get("PostalCode"));
		predef.typeinEditbox(classBillingCity, addressDetails.get("City"));
		predef.selectDropDownWithoutWait(billingState, addressDetails.get("State"));
		predef.typeinEditbox(classBillingPhoneNumber, addressDetails.get("Phone"));
		
		this.isSameShippingAndBillingAddress();
	}
	public void enterBillingAddressForRegisteredUser(String rowRef)
	{
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		predef.typeinEditbox(classBillingFirstName, addressDetails.get("FirstName"));
		predef.typeinEditbox(classBillingLastName, addressDetails.get("LastName"));
		predef.typeinEditbox(classBillingStreetAddress, addressDetails.get("Address1"));
		predef.typeinEditbox(classBillingZipCode, addressDetails.get("PostalCode"));
		predef.typeinEditbox(classBillingCity, addressDetails.get("City"));
		predef.selectDropDownWithoutWait(billingState, addressDetails.get("State"));
		WebElement billingPhoneNumber = TLDriverFactory.getDriver().findElement(By.cssSelector("input[class='input-text allownumeric billingphone phone required']"));
		predef.typeinEditbox(billingPhoneNumber, addressDetails.get("Phone"));
		
		this.isSameShippingAndBillingAddress();
	}
	public void enterBillingAddressForClassForGuestUser(String rowRef)
	{
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		predef.typeinEditbox(classBillingFirstName, addressDetails.get("FirstName"));
		predef.typeinEditbox(classBillingLastName, addressDetails.get("LastName"));
		predef.typeinEditbox(classBillingStreetAddress, addressDetails.get("Address1"));
		predef.typeinEditbox(classBillingZipCode, addressDetails.get("PostalCode"));
		predef.typeinEditbox(classBillingCity, addressDetails.get("City"));
		predef.selectDropDownWithoutWait(billingState, addressDetails.get("State"));
		if(predef.findElementNotPresent(classBillingPhoneNumber))
		{
			predef.typeinEditbox(classBillingPhoneNumber, addressDetails.get("Phone"));
		}	
		this.isSameShippingAndBillingAddress();
	}
	public void enterBillingAddressForGuestUser(String rowRef)
	{
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		predef.typeinEditbox(digiBillingFirstName, addressDetails.get("FirstName"));
		predef.typeinEditbox(digiBillingLastName, addressDetails.get("LastName"));
		predef.typeinEditbox(digiBillingEmail, addressDetails.get("Email"));
		predef.typeinEditbox(digiBillingStreetAddress, addressDetails.get("Address1"));
		predef.typeinEditbox(digiBillingZipCode, addressDetails.get("PostalCode"));
		predef.typeinEditbox(digiBillingCity, addressDetails.get("City"));
		predef.selectFromDropDown(digiBillingState, addressDetails.get("State"));
		predef.typeinEditbox(digiBillingPhoneNumber, addressDetails.get("Phone"));
		
		this.isSameShippingAndBillingAddress();
	}
	public void isSameShippingAndBillingAddress()
	{
		try 
		{
			predef.waitSeconds(3000);
			sameShippingAndBillingAddress = TLDriverFactory.getDriver().findElement(By.xpath("(//div[@class='billing-information']//input)[19]"));
			sameShippingAndBillingAddress.click();
		}
		catch(Exception e)
		{
			
		}
	
	}
	
	public void enterShippingAddress(String rowRef)
	{
		HashMap<String, String> addressDetails = predef.readDataFromExcelSheet(rowRef, "Address");
		
		predef.typeinEditbox(shippingFirstName, addressDetails.get("FirstName"));
		predef.typeinEditbox(shippingLasttName, addressDetails.get("LastName"));
		predef.typeinEditbox(shippingStreeAddress, addressDetails.get("Address1"));
		predef.typeinEditbox(shippingZipCode, addressDetails.get("PostalCode"));
		predef.typeinEditbox(shippingCity, addressDetails.get("City"));
		predef.selectFromDropDown(shippingState, addressDetails.get("State"));
		predef.typeinEditbox(shippingPhoneNumber, addressDetails.get("Phone"));
		
	}
	public void enterCardDetails(String rowRef)
	{
		HashMap<String, String> cardDetails = predef.readDataFromExcelSheet(rowRef, "CardDetails");
		System.out.println(cardDetails.get("CardNumber")+"  "+ cardDetails.get("ExpMonth")+" "+cardDetails.get("ExpYear")+" "+cardDetails.get("CVV"));

		predef.typeinEditbox(digipaymentCardNumber, cardDetails.get("CardNumber"));
		predef.selectFromDropDown(digipaymentExpMonth, cardDetails.get("ExpMonth"));
		digipaymentExpYear = TLDriverFactory.getDriver().findElement(By.xpath(expYearCssSelector));
		predef.selectDropDownWithoutWait(digipaymentExpYear, cardDetails.get("ExpYear"));
		predef.typeinEditbox(digipaymentCodeCVN, cardDetails.get("CVV"));

	}
	
	public void enterCardDetailsForClasses(String rowRef)
	{
		HashMap<String, String> cardDetails = predef.readDataFromExcelSheet(rowRef, "CardDetails");
		System.out.println(cardDetails.get("CardNumber")+"  "+ cardDetails.get("ExpMonth")+" "+cardDetails.get("ExpYear")+" "+cardDetails.get("CVV"));
		predef.typeinEditbox(paymentCardNumber, cardDetails.get("CardNumber"));
		predef.selectFromDropDown(paymentExpMonth, cardDetails.get("ExpMonth"));
		//paymentExpYear = TLDriverFactory.getDriver().findElement(By.cssSelector(expYearSelector));
		predef.selectDropDownWithoutWait(paymentExpYear, cardDetails.get("ExpYear"));
		predef.typeinEditbox(paymentCodeCVN, cardDetails.get("CVV"));
	}
	
	public void enterStudentInfo(String rowRef)
	{
		HashMap<String, String> studentDetials = predef.readDataFromExcelSheet(rowRef, "StudentDetails");
		predef.typeinEditbox(studentEmailAddress, studentDetials.get("Email"));
		predef.typeinEditbox(studentFirstName, studentDetials.get("FirstName"));
		predef.typeinEditbox(studentLastName, studentDetials.get("LastName"));		
	}
	public void clickOnPayPal()
	{
		predef.waitSeconds(5000);
		predef.clickWithoutWait(paypalRadio);
	}
	public void clickOndigiPlaceOrder()
	{
		predef.clickOnElement(digiPlaceOrder);	
		predef.waitSeconds(5000);
		if(predef.findElementNotPresent(regBillingPhoneNumber))
		{
			HashMap<String, String> addressDetails = predef.readDataFromExcelSheet("US", "Address");
			predef.typeinEditbox(regBillingPhoneNumber, addressDetails.get("Phone"));
			predef.clickOnElement(digiPlaceOrder);
		}
	}
}
