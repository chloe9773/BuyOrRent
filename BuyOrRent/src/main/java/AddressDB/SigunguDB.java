package AddressDB;

import java.io.FileInputStream;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class SigunguDB {

	public static void main(String[] args) {
		try {
			FileInputStream file = new FileInputStream("/Users/jeonghwapark/Desktop/tmp/admin_division.xlsx");
			XSSFWorkbook wb = new XSSFWorkbook(file);
			
			XSSFSheet sheet = sheet = wb.getSheetAt(0);
			
			int i = 0;
			int j = 0;
			
			int rows = sheet.getPhysicalNumberOfRows();
			for(i = 0; i < rows; i++) {
				XSSFRow row = sheet.getRow(i);
				
				if(row != null) {
					int cells = row.getPhysicalNumberOfCells();
					
					for(j = 0; j <= cells; j++) {
						XSSFCell cell = row.getCell(j);
						String val = "";
						
						if(cell == null) {
							continue;
						} else {
							switch (cell.getCellType()){ 
							case XSSFCell.CELL_TYPE_FORMULA: 
								val = cell.getCellFormula(); 
								break; 
							case XSSFCell.CELL_TYPE_NUMERIC: 
								val = cell.getNumericCellValue() + ""; 
								break; 
							case XSSFCell.CELL_TYPE_STRING: 
								val = cell.getStringCellValue() + ""; 
								break; 
							case XSSFCell.CELL_TYPE_BLANK: 
								val = cell.getBooleanCellValue() + ""; 
								break; 
							case XSSFCell.CELL_TYPE_ERROR: 
								val = cell.getErrorCellValue() + ""; 
								break; 
							} 
						} 
						System.out.println(val);
						}
					}
				}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
