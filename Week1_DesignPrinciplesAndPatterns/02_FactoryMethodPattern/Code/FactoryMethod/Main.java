package FactoryMethod;

abstract class Document{
    abstract void disp();
}
class WordDocument extends Document{
    public void disp()
    {
        System.out.println("Opening Word document");
    }
}
class PdfDocument extends Document{
    public void disp()
    {
        System.out.println("Opening Pdf document");
    }
}
class ExcelDocument extends Document{
    public void disp()
    {
        System.out.println("Opening Excel Sheet");
    }
}

abstract class DocumentFactory{
    abstract Document createDocument();
}
class WordFactory  extends DocumentFactory{
    public Document createDocument()
    {
        return new WordDocument();
    }
}
class PdfFactory  extends DocumentFactory{
    public Document createDocument()
    {
        return new PdfDocument();
    }
}
class ExcelFactory  extends DocumentFactory{
    public Document createDocument()
    {
        return new ExcelDocument();
    }
}

public class Main {
        public static void main(String[] args) {
        DocumentFactory wordFactory = new WordFactory();
        Document wordDoc = wordFactory.createDocument();
        wordDoc.disp();
        DocumentFactory pdfFactory = new PdfFactory();
        Document pdfDoc = pdfFactory.createDocument();
        pdfDoc.disp();
        DocumentFactory excelFactory = new ExcelFactory();
        Document excelDoc = excelFactory.createDocument();
        excelDoc.disp();
    }
}
