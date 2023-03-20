package edu.uoc.pac1;

import org.junit.jupiter.api.*;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class PAC1Ex3Test {

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
    public void testCalculateTravelledDistance1() {
        assertEquals(13,PAC1Ex3.calculateTravelledDistance(new int[]{0,1}));
        assertEquals(10,PAC1Ex3.calculateTravelledDistance(new int[]{1,0}));
        assertEquals(116,PAC1Ex3.calculateTravelledDistance(new int[]{4,7}));
        assertEquals(0,PAC1Ex3.calculateTravelledDistance(new int[]{4,4}));
        assertEquals(18,PAC1Ex3.calculateTravelledDistance(new int[]{14,12}));

        assertEquals(23,PAC1Ex3.calculateTravelledDistance(new int[]{0,1,0}));
        assertEquals(94,PAC1Ex3.calculateTravelledDistance(new int[]{14,0,14,0,14,2}));
        assertEquals(158,PAC1Ex3.calculateTravelledDistance(new int[]{0,1,4,7}));
        assertEquals(158,PAC1Ex3.calculateTravelledDistance(new int[]{0,1,4,4,4,7,7}));
        assertEquals(716,PAC1Ex3.calculateTravelledDistance(new int[]{11,4,0,8,14,8,9,10,13}));
        assertEquals(644,PAC1Ex3.calculateTravelledDistance(new int[]{6,7,6,6,0,12,9,4}));
        assertEquals(421,PAC1Ex3.calculateTravelledDistance(new int[]{0,3,0,5,0,9}));
    }

    @Test
    public void testCalculateTravelledDistance2() {
        assertEquals(0,PAC1Ex3.calculateTravelledDistance(new int[]{}));
        assertEquals("[ERROR]: The route is empty", outContent.toString().trim());
    }

    @Test
    public void testCalculateTravelledDistance3() {
        assertEquals(-1,PAC1Ex3.calculateTravelledDistance(new int[]{-1}));
        assertEquals("[ERROR]: The route contains invalid destination points", outContent.toString().trim());
    }

    @Test
    public void testCalculateTravelledDistance4() {
        assertEquals(-1,PAC1Ex3.calculateTravelledDistance(new int[]{2,4,17}));
        assertEquals("[ERROR]: The route contains invalid destination points", outContent.toString().trim());
    }

    @Test
    public void testCalculateTravelCostsByMonth1() {
        assertEquals(1.01,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 0, 5.2,true));
        assertEquals(1.05,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 1, 5.2,true));
        assertEquals(1.15,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 11, 5.2,true));
        assertEquals(0.95,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 0, 4.9,true));
        assertEquals(1.1,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 1, 5.9,false));
        assertEquals(1.84,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 11, 8.0,false));

        assertEquals(3.69,PAC1Ex3.calculateTravelCostByMonth(new int[]{2,1,2},5,3.9, false));
        assertEquals(34.44,PAC1Ex3.calculateTravelCostByMonth(new int[]{14,3,11,8,8,2},9,8.4, false));
        assertEquals(15.57,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1,4,9},5,3.9, true));
        assertEquals(10.44,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1,4,4,4,7,7},11,3.9, true));
        assertEquals(106.68,PAC1Ex3.calculateTravelCostByMonth(new int[]{11,3,5,1,14,5,9,10,13},2,11.9, false));
        assertEquals(50.52,PAC1Ex3.calculateTravelCostByMonth(new int[]{6,7,6,6,0,12,6,4},9,6.6, false));
        assertEquals(20.25,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,6,6,6,6,9},4,5.0, true));
    }

    @Test
    public void testCalculateTravelCostsByMonth2() {
        assertEquals(-1,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, -1, 5.2,true));
        assertEquals("[ERROR]: Invalid month", outContent.toString().trim());
    }

    @Test
    public void testCalculateTravelCostsByMonth3() {
        assertEquals(-1,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 12, 5.2,true));
        assertEquals("[ERROR]: Invalid month", outContent.toString().trim());
    }

    @Test
    public void testCalculateTravelCostsByMonth4() {
        assertEquals(-1,PAC1Ex3.calculateTravelCostByMonth(new int[]{0,1}, 5, -5.4,true));
        assertEquals("[ERROR]: Invalid litersPer100KM value", outContent.toString().trim());
    }

    @Test
    public void testCalculateTravelCosts() {
        int[][] data = {
                {2,1,2},
                {14,3,11,8,8,2},
                {0,1,4,9},
                {0,1,4,4,4,7,7}
        };
        assertEquals(50.76,PAC1Ex3.calculateTravelCosts(data, new int[]{0,0,0,0}, 5.4,true));
        assertEquals(57.76,PAC1Ex3.calculateTravelCosts(data, new int[]{11,11,11,11}, 5.4,true));
        assertEquals(46.13,PAC1Ex3.calculateTravelCosts(data, new int[]{0,0,0,0}, 5.4,false));
        assertEquals(60.31,PAC1Ex3.calculateTravelCosts(data, new int[]{11,11,11,11}, 5.4,false));
        assertEquals(59.95,PAC1Ex3.calculateTravelCosts(data, new int[]{0,4,10,11}, 5.4,true));
        assertEquals(61.05,PAC1Ex3.calculateTravelCosts(data, new int[]{0,4,10,11}, 5.5,true));
        assertEquals(64.02,PAC1Ex3.calculateTravelCosts(data, new int[]{0,4,10,11}, 5.5,false));

    }

    @Test
    public void isGasolineCheaper() {
        int[][] data = {
                {0,1,0},
                {14,0,14,0,14,2},
                {0,1,4,7},
                {0,1,4,4,4,7,7},
                {11,4,0,8,14,8,9,10,13},
                {6,7,6,6,0,12,9,4},
                {0,3,0,5,0,9}
        };
        assertFalse(PAC1Ex3.isGasolineCheaper(data, new int[]{0,0,0,0,0,0,0}, 5.4, 4.9));
        assertTrue(PAC1Ex3.isGasolineCheaper(data, new int[]{10,10,10,10,10,10,10}, 5.4, 4.9));
        assertFalse(PAC1Ex3.isGasolineCheaper(data, new int[]{1,2,3,4,5,6,7}, 6.9, 5.4));
        assertTrue(PAC1Ex3.isGasolineCheaper(data, new int[]{5,6,7,8,9,10,11}, 5.0, 5.0));
        assertFalse(PAC1Ex3.isGasolineCheaper(data, new int[]{0,0,1,2,4,6,6,7}, 4.4,4.0));
        assertTrue(PAC1Ex3.isGasolineCheaper(data, new int[]{9,9,10,10,10,10,10,11}, 6.0, 5.4));
    }

}
