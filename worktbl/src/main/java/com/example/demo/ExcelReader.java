package com.example.demo;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;

import java.io.File;
import java.io.IOException;
import java.sql.Time;
import java.time.Duration;
import java.util.Date;
import java.util.Iterator;

/**
 * Created by rajeevkumarsingh on 18/12/17.
 */

public class ExcelReader {

    private String xlspath ;
    ExcelReader(String xlspath)
    {
    	this.xlspath=xlspath;
    }
    
    /**
     * @param args
     * @throws IOException
     * @throws InvalidFormatException
     */
    public void parse(Hihatu_workhourRepository repository) throws IOException, InvalidFormatException {

        // Creating a Workbook from an Excel file (.xls or .xlsx)
        Workbook workbook = WorkbookFactory.create(new File(this.xlspath));
        Cell cell;
        String name=null;
        String loc=null;

        // Retrieving the number of sheets in the Workbook
        System.out.println("Workbook has " + workbook.getNumberOfSheets() + " Sheets : ");


        // Getting the Sheet at index zero
        Sheet sheet = workbook.getSheetAt(0);
        
        // Create a DataFormatter to format and get each cell's value as String
        DataFormatter dataFormatter = new DataFormatter();

        // 1. You can obtain a rowIterator and columnIterator and iterate over them
        System.out.println("\n\nIterating over Rows and Columns using Iterator\n");
        Iterator<Row> rowIterator = sheet.rowIterator();
        int i=0;
        while (rowIterator.hasNext()) {
        	Date date;
        	String stime,etime,itime;
        	date=null;
        	stime=etime=itime="";
        	
        	i++;
            Row row = rowIterator.next();
            int j=0;
            // Now let's iterate over the columns of the current row
            Iterator<Cell> cellIterator = row.cellIterator();
            if (i==8)
            {
            	cell = cellIterator.next();
            	name=cell.getStringCellValue();
            	continue;
            }
            else if (i==10)
            {
            	for (int k=0;k<20;k++)
            	{
            	loc=cellIterator.next().getStringCellValue();
            	System.out.println(k+":"+loc);
            	if (loc.length()>0)
            		break;
            	}
            	continue;
            }
            else if (i<13)
            	continue;
            
            while (cellIterator.hasNext()) {

            	j=j+1;
                cell = cellIterator.next();
                
                if (j==1)
                {
                	if (cell.getCellTypeEnum()!=org.apache.poi.ss.usermodel.CellType.FORMULA)
                		continue;
                	try
                	{
                		date=cell.getDateCellValue();
                	} 	
                	catch(Exception e)
                	{
                		System.out.println (i+" line :"+e.toString());
                	}
                }
                else if (j==6  )
                {
                	stime = dataFormatter.formatCellValue(cell);
                	if (stime=="")
                		continue;
                }
                else if (j==10  )
                {
                	etime = dataFormatter.formatCellValue(cell);

                }
                else if (j==14  )
                {
                	itime = dataFormatter.formatCellValue(cell);

                }                
            }
            if (date!=null &etime!="" &etime!="" && itime!="")
            {
            	System.out.println(date.toString()+"\t"+stime+"\t"+etime+"\t"+itime);
            	Time st=Time.valueOf(stime+":00");
            	Time et=Time.valueOf(etime+":00");  
            	Time it= Time.valueOf(itime+":00");
            	repository.save(new Hihatu_worktbl( name,  date,  "normal", 0,st, et, it ,loc,null));
            }
        }


        workbook.close();
    }

}
