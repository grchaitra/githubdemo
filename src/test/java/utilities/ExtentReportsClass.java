package utilities;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.aventstack.extentreports.reporter.configuration.Theme;

import stepDefinitions.CucumberHooks;

public class ExtentReportsClass
{
	public ExtentReports extent;
	
	public static ExtentReportsClass getExtentReportsClass()
	{
		return null;
	}
    
    public void setUpExtentReports() 
	{
    	extent=new ExtentReports(); 
    	ExtentHtmlReporter repo;
    	repo=new ExtentHtmlReporter(EnvironmentVals.getEnvInstance().getConfig().getProperty("ExtentHtmlReporterFile"));
		repo.config().setEncoding("UTF-8");
		repo.config().setReportName("Extent Reports");
		repo.config().setDocumentTitle("Extent Reports");
		repo.config().setTheme(Theme.DARK); 
		extent.attachReporter(repo);
	}

	public ExtentReports getExtenReports() 
	{
		return extent; 
	}
	public ExtentTest getExtentTest(String testName) 
	{
		ExtentTest test = null;
		test = extent.createTest(testName); 
		return test; 
	} 
}
