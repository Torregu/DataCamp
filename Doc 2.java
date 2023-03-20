package edu.uoc.pac1;

import org.junit.jupiter.api.*;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class PAC1Ex2Test {

    private ByteArrayOutputStream outContent;
    private final PrintStream originalOut = System.out;


    @BeforeEach
    public void setUpStreams() {
        outContent = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outContent));
    }

    @AfterEach
    public void restoreStreams() {
        System.setOut(originalOut);
    }

    @Test
    void testIncomeTaxRate() {

        assertEquals(15, PAC1Ex2.incomeTaxRate(1));
        assertEquals(15, PAC1Ex2.incomeTaxRate(2800));
        assertEquals(15, PAC1Ex2.incomeTaxRate(14999.50));
        assertEquals(15, PAC1Ex2.incomeTaxRate(15000));
        assertEquals(18, PAC1Ex2.incomeTaxRate(15000.10));
        assertEquals(18, PAC1Ex2.incomeTaxRate(15001));
        assertEquals(18, PAC1Ex2.incomeTaxRate(17800.98));
        assertEquals(18, PAC1Ex2.incomeTaxRate(24800));
        assertEquals(22, PAC1Ex2.incomeTaxRate(24800.05));
        assertEquals(22, PAC1Ex2.incomeTaxRate(250000));
        assertEquals(22, PAC1Ex2.incomeTaxRate(15693338));

        //ERRORS
        assertEquals(-1, PAC1Ex2.incomeTaxRate(0));
        assertEquals(-1, PAC1Ex2.incomeTaxRate(-4500));
    }

    @Test
    void testTotalIncomeTaxVAT(){

        assertEquals(2968, PAC1Ex2.totalIncomeTaxVAT(2800), 0.01);
        assertEquals(7155.71, PAC1Ex2.totalIncomeTaxVAT(6750.67), 0.01);
        assertEquals(15899.47, PAC1Ex2.totalIncomeTaxVAT(14999.50), 0.01);
        assertEquals(15900.00, PAC1Ex2.totalIncomeTaxVAT(15000), 0.01);
        assertEquals(15450.01, PAC1Ex2.totalIncomeTaxVAT(15000.01), 0.01);
        assertEquals(25544.00, PAC1Ex2.totalIncomeTaxVAT(24800), 0.01);
        assertEquals(24552.99, PAC1Ex2.totalIncomeTaxVAT(24801), 0.01);
        assertEquals(990000.00, PAC1Ex2.totalIncomeTaxVAT(1000000), 0.01);
        assertEquals(0, PAC1Ex2.totalIncomeTaxVAT(0), 0.01);
        assertEquals(0, PAC1Ex2.totalIncomeTaxVAT(-500.00), 0.01);

    }

    @Test
    void testInvoicesTotal1() {
        double[][] invoices1 = {
                //Client 1
                {1000.00, 2000.00, 50000.00},
                //Client 2
                {18000.00, 4000.00}
        };
        assertEquals(Arrays.toString(new double[] { 52470.0, 22660.0 }), Arrays.toString(PAC1Ex2.invoicesTotal(invoices1)));

        assertEquals("Client 1: 52470.0"+System.lineSeparator()+
                        "Client 2: 22660.0"
                , outContent.toString().trim());
    }

    @Test
    void testInvoicesTotal2() {
        double[][] invoices1 = {
                //Client 1
                {1000.00, 2000.00, 500.00, 350.30},
                //Client 2
                {3362.70, 1104.50, 1445.00, 1771.55, 9570.01},
                //Client 3
                {222.00, 450.78, 6700.89, 1200.00},
                //Client 4
                {444.45, 3000.90, 1234.56, 233.00, 95.76, 4.40},
                //Client 5
                {7600.55}
        };
        assertEquals(Arrays.toString(new double[] { 4081.32, 17771.37, 9088.09, 5313.85, 8056.58 }), Arrays.toString(PAC1Ex2.invoicesTotal(invoices1)));

        assertEquals("Client 1: 4081.32"+System.lineSeparator()+
                        "Client 2: 17771.37"+System.lineSeparator()+
                        "Client 3: 9088.09"+System.lineSeparator()+
                        "Client 4: 5313.85"+System.lineSeparator()+
                        "Client 5: 8056.58"
                , outContent.toString().trim());
    }

    @Test
    void testInvoicesTotal3() {
        double[][] invoices2 = {
                //Client 1
                {7900.57, 12350.33},
                //Client 2
                {3362.70, 34.90, 8.99, 450.78, 6700.89, 1200.00, 11450.78, 700.9, 200.00, 9570.01},
                //Client 3
                {3.90, 80000.05},
        };

        assertEquals(Arrays.toString(new double[] { 20858.43, 33343.15, 79203.91 }), Arrays.toString(PAC1Ex2.invoicesTotal(invoices2)));

        assertEquals("Client 1: 20858.43"+System.lineSeparator()+
                        "Client 2: 33343.15"+System.lineSeparator()+
                        "Client 3: 79203.91"
                , outContent.toString().trim());
    }

}
