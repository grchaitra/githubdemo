Feature: Order Placement Scenarios

Background: 
Given I open the application

@done   @GuestOrdersWithPayPal 
Scenario Outline: Order Placing a online class with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product|Card|Address|Student||Login|Paypal|
|Online|VISA|US|Student1||Login25|Paypal|

@done   @GuestOrdersWithPayPal @Test1 
Scenario Outline: Order Placing a classroom class with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product|Card|Address|Student||Login||Paypal|
|Classroom|VISA|US|Student1||Login26||Paypal|

@done   @GuestOrdersWithPayPal 
Scenario Outline: Order Placing a online class with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product|Card|Address|Student||Login|Paypal|
|online + classroom|VISA|US|Student1||Login24|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a online and classroom classes with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product2>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|Online|VISA|US|Student1||Login23|Classroom|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a online and Blended classes with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product2>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|Online|VISA|US|Student1||Login22|online + classroom|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a Blended and classroom classes with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|online + classroom|VISA|US|Student1||Login21|Classroom|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a online class and digital product with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|Online|VISA|US|Student1||Login27|DigitalProduct|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a classroom class and digital product with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|Classroom|VISA|US|Student1||Login28|DigitalProduct|Paypal|

@done   @GuestOrdersWithPayPal @Test1
Scenario Outline: Order Placing a blended class and digital product with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|online + classroom|VISA|US|Student1||Login29|DigitalProduct|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a blended class, classroom and digital product with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Paypal|
|online + classroom|VISA|US|Student1||Login30|DigitalProduct|Classroom|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a online class and product bundle with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|Online|VISA|US|Student1||Login31|ProductBundle|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a classroom class and product bundle with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|Classroom|VISA|US|Student1||Login32|ProductBundle|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a blended class and product bundle with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Paypal|
|online + classroom|VISA|US|Student1||Login33|ProductBundle|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a classroom class, online class and product bundle with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Paypal|
|Classroom|VISA|US|Student1||Login34|ProductBundle|Online|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a blended class, online class and product bundle with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Paypal|
|online + classroom|VISA|US|Student1||Login35|ProductBundle|Online|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a blended class, classroom class and product bundle with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product3>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Paypal|
|online + classroom|VISA|US|Student1||Login36|ProductBundle|Classroom|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a blended class, classroom class, online and product bundle with PayPal as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product4>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Product4|Paypal|
|online + classroom|VISA|US|Student1||Login37|ProductBundle|Classroom|Online|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a online class and certificate with PayPal as payment method for Guest user
Given I am on home page
And I search certificate "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product2>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product2|Card|Address|Student||Login|Product1|Paypal|
|Online|VISA|US|Student1||Login38|CertificateID|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a classroom class and certificate with PayPal as payment method for Guest user
Given I am on home page
And I search certificate "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product1|Paypal|
|Classroom|VISA|US|Student1||Login39|CertificateID|Paypal|

@Pending
Scenario Outline: Order Placing a blended class and certificate with PayPal as payment method for Guest user
Given I am on home page
And I search certificate "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product1|Paypal|
|online + classroom|VISA|US|Student1||Login40|CertificateID|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a blended class, online and certificate with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product4>"
And I click on americanRedCrossLogo in HomePage
And I search certificate "<Product2>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Product4|Paypal|
|online + classroom|VISA|US|Student1||Login41|CertificateID|Classroom|Online|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a classroom class, online and certificate with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product3>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product4>"
And I click on americanRedCrossLogo in HomePage
And I search certificate "<Product2>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Card|Address|Student||Login|Product2|Product3|Product4|Paypal|
|VISA|US|Student1||Login42|CertificateID|Classroom|Online|Paypal|


@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a blended class, classroom class, online and certificate with PayPal as payment method for Guest user
Given I am on home page
And I seach class "<Product3>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product4>"
And I click on americanRedCrossLogo in HomePage
And I search certificate "<Product2>"
And I enter student details of "<Student>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2||Product4|Paypal|Product3|
|online + classroom|VISA|US|Student1||Login43|CertificateID||Online|Paypal|Classroom|





