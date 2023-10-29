package utilities;

import java.util.HashMap;

public class ReadingDataFromExcel {

	public static void main(String[] args) {
		FileReaderUtils fr = new FileReaderUtils();
		HashMap<String, String> card = fr.ReadDataFromRow("C:\\Users\\rprasad01\\OneDrive - dentsu\\Rajendra\\Projects\\ARC\\ARC\\src\\test\\java\\config\\TestData.xlsx", "CardDetails", "VISA");
		System.out.println(card.get("CardNumber"));
		HashMap<String, String> address = fr.ReadDataFromRow("C:\\Users\\rprasad01\\OneDrive - dentsu\\Rajendra\\Projects\\ARC\\ARC\\src\\test\\java\\config\\TestData.xlsx", "Address", "US");
		System.out.println(address.get("FirstName"));
		HashMap<String, String> products = fr.ReadDataFromRow("C:\\Users\\rprasad01\\OneDrive - dentsu\\Rajendra\\Projects\\ARC\\ARC\\src\\test\\java\\config\\TestData.xlsx", "ProductDetails", "DigitalProduct");
		System.out.println(products.get("ProductID"));
	}

}
