package objectsContainer;


import java.util.List;

import org.openqa.selenium.WebElement;

import pageClasses.CertificationsPage;
import pageClasses.CheckoutPaymentBillingPage;
import pageClasses.CreateAccountPage;
import pageClasses.HomePage;
import pageClasses.LoginPage;
import pageClasses.MyAccountDashBoard;
import pageClasses.OrderConfirmationPage;
import pageClasses.PDPPage;
import pageClasses.PLPPage;
import pageClasses.PayPalLoginPage;
import pageClasses.SearchClassPage;
import stepDefinitions.CucumberHooks;
import utilities.ExtentReportsClass;

public class ObjectsContainer {

	public HomePage home = new HomePage();
	public LoginPage login = new LoginPage();
	public CheckoutPaymentBillingPage payment = new CheckoutPaymentBillingPage();
	public OrderConfirmationPage orderConfirmation = new OrderConfirmationPage();
	public PDPPage pdp = new PDPPage();
	public PLPPage plp = new PLPPage();
	public MyAccountDashBoard account = new MyAccountDashBoard();
	public CertificationsPage cert = new CertificationsPage();
	public SearchClassPage searchClass = new SearchClassPage();
	public PayPalLoginPage payPal = new PayPalLoginPage();
	public CreateAccountPage newAccount = new CreateAccountPage();

	public WebElement ele;

	public CreateAccountPage getCreateAccountPage()
	{
		return newAccount;
	}
	public static ObjectsContainer getObjectsContainer()
	{
		return CucumberHooks.setUpObject.pageObjects;
	}
	public PayPalLoginPage getPayPalLoginPage()
	{
		return payPal;
	}
	public HomePage getHomePage()
	{
		return home;
	}
	public LoginPage getLoginPage()
	{
		return login;
	}
	public CheckoutPaymentBillingPage getCheckoutPaymentBillingPage()
	{
		return payment;
	}
	public OrderConfirmationPage getOrderConfirmationPage()
	{
		return orderConfirmation;
	}
	public PDPPage getPDPPage()
	{
		return pdp;
	}
	public PLPPage getPLPPage()
	{
		return plp;
	}
	public MyAccountDashBoard getMyAccountDashBoard()
	{
		return account;
	}
	public CertificationsPage getCertificationsPage()
	{
		return cert;
	}
	public SearchClassPage getSearchClassPage()
	{
		return searchClass;
	}

	public WebElement getPageObject(String field, String page) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {
		try
		{
			WebElement ele=null;
			if(page.equalsIgnoreCase("HomePage")) {
				ele = (WebElement) home.getClass().getDeclaredField(field).get(home);

			}
			else if(page.equalsIgnoreCase("LoginPage")) {
				ele = (WebElement) login.getClass().getDeclaredField(field).get(login);

			}
			else if(page.equalsIgnoreCase("CheckoutPaymentBillingPage")) {
				ele = (WebElement) payment.getClass().getDeclaredField(field).get(payment);

			}
			else if(page.equalsIgnoreCase("OrderConfirmationPage")) {
				ele = (WebElement) orderConfirmation.getClass().getDeclaredField(field).get(orderConfirmation);

			}
			else if(page.equalsIgnoreCase("PDPPage")) {
				ele = (WebElement) pdp.getClass().getDeclaredField(field).get(pdp);

			}
			else if(page.equalsIgnoreCase("PLPPage")) {
				ele = (WebElement) plp.getClass().getDeclaredField(field).get(plp);

			}
			else if(page.equalsIgnoreCase("MyAccountDashBoard")) {
				ele = (WebElement) account.getClass().getDeclaredField(field).get(account);

			}
			else if(page.equalsIgnoreCase("CertificationsPage")) {
				ele = (WebElement) cert.getClass().getDeclaredField(field).get(cert);

			}
			else if(page.equalsIgnoreCase("SearchClassPage")) {
				ele = (WebElement) searchClass.getClass().getDeclaredField(field).get(searchClass);
			}
			else if(page.equalsIgnoreCase("PayPalLoginPage")) {

				ele = (WebElement) payPal.getClass().getDeclaredField(field).get(payPal);
			}
			else if(page.equalsIgnoreCase("CreateAccountPage")) {

				ele = (WebElement) newAccount.getClass().getDeclaredField(field).get(newAccount);
			}
			else {
				System.out.println(page + " DOES NOT EXIST");
			}

			return ele;

		}
		catch(Exception e)
		{
			CucumberHooks.setUpObject.except = e;
			return null;
		}
	}
}
