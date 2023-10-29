Feature: Order Placement Scenarios

Background: 
Given I open the application

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a Digital product with PayPal as payment method as a guest user
Given I am on home page
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
And I click on cartLink in PDPPage
And I see element cart_checkout in PDPPage
And I click on cart_checkout in PDPPage
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage


Examples:
|Product|Card|Address|Paypal|
|DigitalProduct|VISA|US|Paypal|

@done   @GuestOrdersWithPayPal   @Test1 
Scenario Outline: Order Placing a certificate with PayPal as payment method as a guest user
Given I am on home page
And I search certificate "<Certificate>"
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Certificate|Card|Address|Paypal|
|CertificateID|VISA|US|Paypal|
@done   @GuestOrdersWithPayPal 
Scenario Outline: Order Placing a product bundle with PayPal as payment method as a guest user
Given I am on home page
And I seach product "<Product>"
And I click on firstProduct in PLPPage
And I print product details in PDP
And I add product to the cart
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
|Product|Card|Address|Paypal|
|ProductBundle|VISA|US|Paypal|
@done   @GuestOrdersWithPayPal 
Scenario Outline: Order Placing a product set with PayPal as payment method as a guest user
Given I am on home page
And I seach product "<Product>"
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
|Product|Card|Address|Paypal|
|ProductSet|VISA|US|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a product bundle and Digital product with PayPal as payment method as a guest user
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
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Paypal|
|ProductBundle|DigitalProduct|VISA|US|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a product bundle and certificate with PayPal as payment method as a guest user
Given I am on home page
And I seach product "<Product1>"
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
|Product1|Card|Address|Certificate|Paypal|
|ProductBundle|VISA|US|CertificateID|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order placing a Digital product and Certificate with PayPal as payment method as a guest user
Given I am on home page
And I seach product "<Product1>"
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
|Product1|Card|Address|Certificate|Paypal|
|DigitalProduct|VISA|US|CertificateID|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order placing a Digital product, Product bundle, and certificate with PayPal as payment method as a guest user
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
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2|Paypal|
|DigitalProduct|VISA|US|CertificateID|ProductBundle|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a Digital product and product set with PayPal as payment method as a guest user
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
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Product2|Paypal|
|DigitalProduct|VISA|US|ProductSet|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a certificate and product set with PayPal as payment method as a guest user
Given I am on home page
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
|Certificate|Card|Address|Product|Paypal|
|CertificateID|VISA|US|ProductSet|Paypal|

@done   @GuestOrdersWithPayPal @Test1 
Scenario Outline: Order Placing a product bundle, certificate, and product set with PayPal as payment method as a guest user
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
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details

Examples:
|Product1|Card|Address|Certificate|Product2|Paypal|
|ProductBundle|VISA|US|CertificateID|ProductSet|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order placing a Digital product, Product Set and Certificate with PayPal as payment method as a guest user
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
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Card|Address|Certificate|Product2|Paypal|
|DigitalProduct|VISA|US|CertificateID|ProductSet|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a product bundle and Digital product, product set with PayPal as payment method as a guest user
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
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3|Paypal|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|Paypal|

@done   @GuestOrdersWithPayPal
Scenario Outline: Order Placing a product bundle and Digital product, product set, Certificate with PayPal as payment method as a guest user
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
And I click on PayPal Radio button
And I enter billing address details of "<Address>" for digital product
And I click on digiPlaceOrder in CheckoutPaymentBillingPage
And I enter paypal login details of "<Paypal>"
Then I see element confirmationMessage in OrderConfirmationPage
And I save order details
Examples:
|Product1|Product2|Card|Address|Product3|Certificate|Paypal|
|ProductBundle|DigitalProduct|VISA|US|ProductSet|CertificateID|Paypal|

