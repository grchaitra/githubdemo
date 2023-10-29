package runner;


import io.cucumber.testng.AbstractTestNGCucumberTests;

import io.cucumber.testng.CucumberOptions;


//@RunWith(Cucumber.class)
@CucumberOptions(
		features = "Features", // Path of feature files

		glue={"stepDefinitions", "pageClasses"}, // We give the path of step definition package
		monochrome=true, //Display the output in readable format
		dryRun=false,//It checks whether all the steps have got step definitions methods

		plugin = { "pretty", "junit:target/cucumber-reports/Cucumber.xml"
				//"com.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report.html"
				//"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:target/ExtentReport.html"
				//"com.cucumber.listener.ExtentCucumberFormatter:target/ExtentReport.html"
				//"json:target/surefire-reports/Cucumber.json",
				//"html:target/surefire-reports",
				// "rerun:target/failed_scenario/rerun.txt",
				//"json:target/cucumber.json"
		},
		
		tags= "@RegisteredOrdersWithCC or @RegisteredOrdersWithPaypal or @GuestOrdersWithCC"
		)

public class TestRunner_Desktop extends AbstractTestNGCucumberTests {



}
