Feature: Order Placement Scenarios

Background: 
Given I open the application


@done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a classroom with PayPal as payment method as registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach class "<Product>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|Student|Paypal||Login|
|Classroom|VISA|US|Student1|Paypal||Login47|

@done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a online class with PayPal as payment method as registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I seach class "<Product>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|Student|Login||Paypal|
|Online|VISA|US|Student1|Login48||Paypal|

@done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a blended class with PayPal as payment method as registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4||Paypal|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom||Paypal|	

 @done   @RegisteredOrdersWithPaypal @Test1 
Scenario Outline: Order Placing a Online class, classroom class with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom||Paypal|	


 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a classroom class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a online class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|Online|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount||Paypal|

 @done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a online class and blended class with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|Online|VISA|US|Student1||SuccessfulLogin|online + classroom|NewAccount||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a Classroom class and blended class with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product2>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|online + classroom|NewAccount||Paypal|


  @done   @RegisteredOrdersWithPaypal @Test1  
Scenario Outline: Order Placing a online class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|Online|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount||Paypal|


@done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a blended class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount||Paypal|

@done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a Classroom class and blended class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product2>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|online + classroom|NewAccount|DigitalProduct||Paypal|

@done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a online class and ProductBundle with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|Online|VISA|US|Student1||SuccessfulLogin|ProductBundle|NewAccount||Paypal|

@done   @RegisteredOrdersWithPaypal 	
Scenario Outline: Order Placing a Classroom class and ProductBundle with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|ProductBundle|NewAccount||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a blended class and ProductBundle with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount||Paypal|
|online + classroom|VISA|US|Student1||SuccessfulLogin|ProductBundle|NewAccount||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a Classroom class and online and product bundle class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|Online|NewAccount|ProductBundle||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a blended class and online and product bundle class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3||Paypal|
|online + classroom|VISA|US|Student1||SuccessfulLogin|Online|NewAccount|ProductBundle||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a blended class and Classroom and product bundle class and digital product with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3||Paypal|
|online + classroom|VISA|US|Student1||SuccessfulLogin|Classroom|NewAccount|ProductBundle||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a online class and certificate with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate||Paypal|
|Online|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a Classroom class and certificate with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a blended class and certificate with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I seach class "<Product1>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate||Paypal|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail||Paypal|

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a Online class, blended class and certificate with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3||Paypal|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online||Paypal|	

 @done   @RegisteredOrdersWithPaypal
Scenario Outline: Order Placing a Online class, classroom class and certificate with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online||Paypal|	

 @done   @RegisteredOrdersWithPaypal 
Scenario Outline: Order Placing a Online class, classroom class, Blended class and certificate with PayPal as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product4>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4||Paypal|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom||Paypal|	
