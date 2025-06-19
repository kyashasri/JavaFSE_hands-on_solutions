package Forecasting;

public class Forecast {

    public static double futureValue(double currentValue, double growthRate, int years) {
        if (years == 0) {
            return currentValue;
        }
        return futureValue(currentValue * (1 + growthRate), growthRate, years - 1);
    }

    public static void main(String[] args) {
        double initialValue = 1000.0;
        double annualGrowthRate = 0.05; // assumed 5% growthrate
        int forecastYears = 5;

        double result = futureValue(initialValue, annualGrowthRate, forecastYears);
        System.out.println("Initial Value: "+initialValue);
        System.out.println("Assumed Growth rate: "+annualGrowthRate);
        System.out.printf("Forecasted value after %d years: %.2f%n", forecastYears, result);
    }


}
