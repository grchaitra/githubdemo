Feature: Order Placement Scenarios

Background: 
Given I open the application



@done   @RegisteredOrdersWithPaypal  
Scenario Outline: Order Placing a Digital product with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address||Login||Paypal|
|DigitalProduct|VISA|US||SuccessfulLogin||Paypal|

@done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a certificate with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I search certificate "<Certificate>" for registered user
And I click on PayPal Radio button
And I enter billing and shipping address details of "<Address>" for digital product for registered user with PayPal as payement method 
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Certificate|Card|Address|Login||Paypal|
|CertificateEmail|VISA|US|SuccessfulLogin||Paypal|

@done   @RegisteredOrdersWithPaypal @Test1
Scenario Outline: Order Placing a product bundle with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing and shipping address details of "<Address>" for digital product for registered user with PayPal as payement method 
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address||Paypal|Login|
|ProductBundle|VISA|US||Paypal|SuccessfulLogin|

@done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a product set  with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing and shipping address details of "<Address>" for digital product for registered user with PayPal as payement method
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product|Card|Address||Paypal||Login|
|ProductSet|VISA|US||Paypal||SuccessfulLogin|


@done   @RegisteredOrdersWithPaypal @multi @Test1
Scenario Outline: Order Placing a product bundle and Digital product, product set with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3|Certificate||Paypal||Login|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|CertificateEmail||Paypal||SuccessfulLogin|

@done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a product bundle and certificate with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I search certificate "<Certificate>" for registered user
And I click on PayPal Radio button
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product1|Card|Address|Certificate||Paypal||Login|
|ProductBundle|VISA|US|CertificateEmail||Paypal||SuccessfulLogin|

@done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a product bundle and Digital product  with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address||Paypal||Login|
|ProductBundle|DigitalProduct|VISA|US||Paypal||SuccessfulLogin|



@done   @RegisteredOrdersWithPaypal
Scenario Outline: Order placing a Product bundle, Digital product and Certificate with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I search certificate "<Certificate>" for registered user
And I click on PayPal Radio button
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate||Paypal||Login|Product2|
|DigitalProduct|VISA|US|CertificateEmail||Paypal||SuccessfulLogin|ProductBundle|



Scenario Outline: Order placing a Digital product, Product bundle, and certificate with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I search certificate "<Certificate>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2||Paypal|
|DigitalProduct|VISA|US|CertificateEmail|ProductBundle||Paypal|


Scenario Outline: Order Placing a Digital product and product set with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Product2||Paypal|
|DigitalProduct|VISA|US|ProductSet||Paypal|

Scenario Outline: Order Placing a certificate and product set with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I search certificate "<Certificate>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Certificate|Card|Address|Product||Paypal|
|CertificateEmail|VISA|US|ProductSet||Paypal|

Scenario Outline: Order Placing a product bundle, certificate, and product set with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I search certificate "<Certificate>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product1|Card|Address|Certificate|Product2||Paypal|
|ProductBundle|VISA|US|CertificateEmail|ProductSet||Paypal|

Scenario Outline: Order placing a Digital product and Certificate and product set with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I search certificate "<Certificate>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2||Paypal|
|DigitalProduct|VISA|US|CertificateEmail|ProductSet||Paypal|

Scenario Outline: Order Placing a product bundle and Digital product, product set with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3||Paypal|
|ProductBundle|DigitalProduct|VISA|US|ProductSet||Paypal|



Scenario Outline: Order placing an online course with PayPal as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage

Examples:
|Login|
|SuccessfulLogin|
