Feature: Order Placement Scenarios

Background: 
Given I open the application

@done @RegisteredOrdersWithCC @Done 
Scenario Outline: Order Placing a classroom class with credit card as payment method as registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom|	


@done @RegisteredOrdersWithCC 
Scenario Outline: Order Placing a online class with credit card as payment method as registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4|
|Online|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom|	

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a blended class with credit card as payment method as registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom|	

@done @RegisteredOrdersWithCC @Test1 
Scenario Outline: Order Placing a Online class, classroom class with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom|	


@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a classroom class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a online class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|Online|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a online class and blended class with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|Online|VISA|US|Student1||SuccessfulLogin|online + classroom|NewAccount|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a Classroom class and blended class with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|Classroom|VISA|US|Student1||SuccessfulLogin|online + classroom|NewAccount|


@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a online class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|Online|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|


@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a blended class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|


@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a Classroom class and blended class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3|
|Classroom|VISA|US|Student1||SuccessfulLogin|online + classroom|NewAccount|DigitalProduct|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a online class and ProductBundle with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|Online|VISA|US|Student1||SuccessfulLogin|ProductBundle|NewAccount|

@done @RegisteredOrdersWithCC	
Scenario Outline: Order Placing a Classroom class and ProductBundle with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|Classroom|VISA|US|Student1||SuccessfulLogin|ProductBundle|NewAccount|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a blended class and ProductBundle with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|
|online + classroom|VISA|US|Student1||SuccessfulLogin|ProductBundle|NewAccount|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a Classroom class and online and product bundle class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3|
|Classroom|VISA|US|Student1||SuccessfulLogin|Online|NewAccount|ProductBundle|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a blended class and online and product bundle class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3|
|online + classroom|VISA|US|Student1||SuccessfulLogin|Online|NewAccount|ProductBundle|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a blended class and Classroom and product bundle class and digital product with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I seach product "<Product3>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach class "<Product2>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details 	
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Product3|
|online + classroom|VISA|US|Student1||SuccessfulLogin|Classroom|NewAccount|ProductBundle|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a online class and certificate with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|
|Online|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a Classroom class and certificate with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a blended class and certificate with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I seach class "<Product1>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a Online class, blended class and certificate with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|
|online + classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|	

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a Online class, classroom class and certificate with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|	

@done @RegisteredOrdersWithCC
Scenario Outline: Order Placing a Online class, classroom class, Blended class and certificate with credit card as payment method for Registered user
Given I am on home page
And I create account using "<NewAccount>"
And I search certificate "<Certificate>" for registered user
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product4>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product1>"
And I click on americanRedCrossLogo in HomePage
And I seach class "<Product3>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for classes for guest user
And I click on placeOrderAndRegister in CheckoutPaymentBillingPage
And I save order details
Examples:
|Product1|Card|Address|Student||Login|Product2|NewAccount|Certificate|Product3|Product4|
|Classroom|VISA|US|Student1||SuccessfulLogin|DigitalProduct|NewAccount|CertificateEmail|Online|online + classroom|	
