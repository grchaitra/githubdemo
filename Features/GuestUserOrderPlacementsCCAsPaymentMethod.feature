Feature: Order Placement Scenarios

Background: 
Given I open the application

@done   @GuestOrdersWithCC @Done @Test1 
Scenario Outline: Order Placing a product bundle and Digital product, product set with Credit card as payment method
Given I am on home page
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|


@done   @GuestOrdersWithCC 
Scenario Outline: Order Placing a Digital product with Credit card as payment method
Given I am on home page
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|
|DigitalProduct|VISA|US|

@done   @GuestOrdersWithCC  
Scenario Outline: Order Placing a certificate with Credit card as payment method
Given I am on home page
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Certificate|Card|Address|
|CertificateID|VISA|US|

@done   @GuestOrdersWithCC 
Scenario Outline: Order Placing a product bundle with Credit card as payment method
Given I am on home page
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product|Card|Address|
|ProductBundle|VISA|US|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a product set with Credit card as payment method
Given I am on home page
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product|Card|Address|
|ProductSet|VISA|US|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a product bundle and Digital product, product set, Certificate with Credit card as payment method
Given I am on home page
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
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3|Certificate|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|CertificateID|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a product bundle and certificate with Credit card as payment method
Given I am on home page
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product1|Card|Address|Certificate|
|ProductBundle|VISA|US|CertificateID|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a Digital product and product set  with Credit card as payment method
Given I am on home page
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Product2|
|DigitalProduct|VISA|US|ProductSet|

@done   @GuestOrdersWithCC @Test1 
Scenario Outline: Order placing a Digital product, Product bundle, and certificate with Credit card as payment method
Given I am on home page
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2|
|DigitalProduct|VISA|US|CertificateID|ProductBundle|

@done   @GuestOrdersWithCC
Scenario Outline: Order placing a Digital product and Certificate and product set with Credit card as payment method
Given I am on home page
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2|
|DigitalProduct|VISA|US|CertificateID|ProductSet|


@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a certificate and product set with Credit card as payment method
Given I am on home page
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Certificate|Card|Address|Product|
|CertificateID|VISA|US|ProductSet|

@done   @GuestOrdersWithCC 
Scenario Outline: Order Placing a product bundle and Digital product with Credit card as payment method
Given I am on home page
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|
|ProductBundle|DigitalProduct|VISA|US|

@done   @GuestOrdersWithCC
Scenario Outline: Order placing a Digital product and Certificate with Credit card as payment method
Given I am on home page
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|
|DigitalProduct|VISA|US|CertificateID|

@done   @GuestOrdersWithCC
Scenario Outline: Order Placing a product bundle, certificate, and product set with Credit card as payment method
Given I am on home page
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I seach product "<Product2>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add 2 products to the cart from a product set
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product1|Card|Address|Certificate|Product2|
|ProductBundle|VISA|US|CertificateID|ProductSet|



Scenario Outline: Log in using page methods 
Given I am on home page
And I click on accountLink
And I click on loginOrCreateAccoutButton
Then I see element usernameOrEmail in LoginPage
And I log in using page methods by "<Login>" in LoginPage
Examples:
|Login|
|SuccessfulLogin|


Scenario Outline: Log in using generic methods
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
Examples:
|Login|
|SuccessfulLogin|


Scenario Outline: Adding product to the cart using generic methods
Given I am on home page
And I seach product "<Product1>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
Examples:
|Product1|Product2|Card|Address|Product3|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|


Scenario Outline: Adding product to the cart using page methods
Given I am on home page
And I seach product using page methods by "<Product1>"
And I click on firstProduct
And I print product details in PDP
And I add product to the cart
Examples:
|Product1|Product2|Card|Address|Product3|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|