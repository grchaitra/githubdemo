Feature: Order Placement Scenarios

Background: 
Given I open the application

@done @RegisteredOrdersWithCC 
Scenario Outline: Order Placing a Digital product with Credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address||Login|
|DigitalProduct|VISA|US||SuccessfulLogin|

@Doubt @done @RegisteredOrdersWithCC 
Scenario Outline: Order Placing a certificate with credit card as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage
And I clear cart items
And I search certificate "<Certificate>" for registered user
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Certificate|Card|Address|Login|
|CertificateEmail|VISA|US|SuccessfulLogin|

@done @RegisteredOrdersWithCC  @Test1 @Test2
Scenario Outline: Order Placing a product bundle with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I click on continue button on address validation dialog
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product|Card|Address|Login|
|ProductBundle|VISA|US|SuccessfulLogin|

@done @RegisteredOrdersWithCC 
Scenario Outline: Order Placing a product set  with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product|Card|Address|Login|
|ProductSet|VISA|US|SuccessfulLogin|

@done @RegisteredOrdersWithCC 
Scenario Outline: Order Placing a product bundle and Digital product  with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Login|
|ProductBundle|DigitalProduct|VISA|US|SuccessfulLogin|

@done @RegisteredOrdersWithCC @Test1 
Scenario Outline: Order Placing a product bundle and certificate with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder button
And I click on continue button on address validation dialog
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Login|
|ProductBundle|VISA|US|CertificateEmail|SuccessfulLogin|


Scenario Outline: Order placing a Digital product and Certificate with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Login|
|DigitalProduct|VISA|US|CertificateEmail|SuccessfulLogin|


Scenario Outline: Order placing a Digital product, Product bundle, and certificate with credit card as payment for registered user
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
And I search certificate "<Certificate>" for registered user
And I enter card details of "<Card>" for digital product
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2||Login|
|DigitalProduct|VISA|US|CertificateEmail|ProductBundle||SuccessfulLogin|



Scenario Outline: Order Placing a Digital product and product set with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Product2|
|DigitalProduct|VISA|US|ProductSet|

Scenario Outline: Order Placing a certificate and product set with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Certificate|Card|Address|Product|
|CertificateEmail|VISA|US|ProductSet|

Scenario Outline: Order Placing a product bundle, certificate, and product set with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product1|Card|Address|Certificate|Product2|
|ProductBundle|VISA|US|CertificateEmail|ProductSet|

@ToBeDone
Scenario Outline: Order placing a Digital product and Certificate and product set with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2|
|DigitalProduct|VISA|US|CertificateEmail|ProductSet|

Scenario Outline: Order Placing a product bundle and Digital product, product set with credit card as payment for registered user
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
And I enter card details of "<Card>" for digital product
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|

@ToBeDone
Scenario Outline: Order Placing a product bundle and Digital product, product set, Certificate with credit card as payment for registered user
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
And I search certificate "<Certificate>"
And I enter card details of "<Card>" for digital product
And I enter billing and shipping address details of "<Address>" for digital product for registered user
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3|Certificate|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|CertificateEmail|


Scenario Outline: Order placing an online course with credit card as payment for registered user
Given I am on home page
And I click on accountLink in HomePage
And I click on loginOrCreateAccoutButton in HomePage
Then I see element usernameOrEmail in LoginPage
And I log in using "<Login>" in LoginPage

Examples:
|Login|
|SuccessfulLogin|
