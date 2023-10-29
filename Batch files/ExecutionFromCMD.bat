call title ARCAutomation
call cd C:\Users\rprasad01\git\american-red-cross
call mvn -Dbrowser=chrome -Dcucumber.filter.tags="@GuestOrdersWithPayPal or @GuestOrdersWithCC or @RegisteredOrdersWithCC or @RegisteredOrdersWithPaypal" test
call pause