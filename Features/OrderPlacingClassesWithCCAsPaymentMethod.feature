Feature: Order Placement Scenarios

Background: 
Given I open the application

@done   @GuestOrdersWithCC 
Scenario Outline: Order Placing a online class with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|
|Online|VISA|US|Student1||SuccessfulLogin|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a classroom class with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|ClassType|Card|Address|Student||Login|
|Classroom|VISA|US|Student1||SuccessfulLogin|

@done   @GuestOrdersWithCC   @Test1 
Scenario Outline: Order Placing a blended class with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|
|online + classroom|VISA|US|Student1||SuccessfulLogin|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a online and classroom classes with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product2>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|Online|VISA|US|Student1||Login1|Classroom|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a online and Blended classes with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product2>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|Online|VISA|US|Student1||Login2|online + classroom|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a Blended and classroom classes with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|online + classroom|VISA|US|Student1||Login3|Classroom|

@done   @GuestOrdersWithCC 
Scenario Outline: Order Placing a online class and digital product with credit card as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|Online|VISA|US|Student1||Login4|DigitalProduct|

@done   @GuestOrdersWithCC @Test1 
Scenario Outline: Order Placing a classroom class and digital product with credit card as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|Classroom|VISA|US|Student1||Login5|DigitalProduct|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a blended class and digital product with credit card as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|online + classroom|VISA|US|Student1||Login6|DigitalProduct|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a blended class, classroom and digital product with credit card as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I seach class "<Product3>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|
|online + classroom|VISA|US|Student1||Login7|DigitalProduct|Classroom|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a online class and product bundle with credit card as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|Online|VISA|US|Student1||Login8|ProductBundle|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a classroom class and product bundle with credit card as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|Classroom|VISA|US|Student1||Login9|ProductBundle|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a blended class and product bundle with credit card as payment method for Guest user
Given I am on home page
And I seach product "<Product2>"
And I seach class "<Product1>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I enter card details of "<Card>" for classes
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|
|online + classroom|VISA|US|Student1||Login10|ProductBundle|


Scenario Outline: Order Placing a classroom class, online class and product bundle with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I seach class "<Product3>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|
|Classroom|VISA|US|Student1||Login11|ProductBundle|Online|


Scenario Outline: Order Placing a blended class, online class and product bundle with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I seach class "<Product3>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|
|online + classroom|VISA|US|Student1||Login12|ProductBundle|Online|


Scenario Outline: Order Placing a blended class, classroom class and product bundle with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I seach class "<Product3>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|
|online + classroom|VISA|US|Student1||Login13|ProductBundle|Classroom|


Scenario Outline: Order Placing a blended class, classroom class, online and product bundle with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I seach class "<Product3>"
And I seach class "<Product4>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Product4|
|online + classroom|VISA|US|Student1||Login14|ProductBundle|Classroom|Online|


Scenario Outline: Order Placing a online class and certificate with credit card as payment method for Guest user
Given I am on home page
And I search certificate "<Product1>"
And I seach class "<Product2>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product2|Card|Address|Student||Login|Product1|
|Online|VISA|US|Student1||Login15|CertificateID|


Scenario Outline: Order Placing a classroom class and certificate with credit card as payment method for Guest user
Given I am on home page
And I search certificate "<Product1>"
And I seach class "<Product>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product1|
|Classroom|VISA|US|Student1||Login16|CertificateID|


Scenario Outline: Order Placing a blended class and certificate with credit card as payment method for Guest user
Given I am on home page
And I search certificate "<Product1>"
And I seach class "<Product>"
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product1|
|online + classroom|VISA|US|Student1||Login17|CertificateID|


Scenario Outline: Order Placing a blended class, classroom class, online and certificate with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I seach class "<Product3>"
And I seach class "<Product4>"
And I search certificate "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|Product3|Product4|
|online + classroom|VISA|US|Student1||Login18|CertificateID|Classroom|Online|


Scenario Outline: Order Placing a classroom class, online and certificate with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product3>"
And I seach class "<Product4>"
And I search certificate "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Card|Address|Student||Login|Product2|Product3|Product4|
|VISA|US|Student1||Login19|CertificateID|Classroom|Online|



Scenario Outline: Order Placing a blended class, classroom class, online and certificate with credit card as payment method for Guest user
Given I am on home page
And I seach class "<Product1>"
And I seach class "<Product4>"
And I search certificate "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter student details of "<Student>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2||Product4|
|online + classroom|VISA|US|Student1||Login20|CertificateID||Online|










