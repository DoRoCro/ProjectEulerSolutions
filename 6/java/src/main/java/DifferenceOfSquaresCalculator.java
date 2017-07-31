class DifferenceOfSquaresCalculator {
  public static void main(String[] args) {
    int answer = computeDifferenceOfSquares(100);
    System.out.println("The answer is: " + answer);
  }
  public void DifferenceOfSquaresCalculator() {}

  public static int computeSquareOfSumTo(int number) {
    int sum = 0;
    for (int i=number;i>0 ;i-- ) {
      sum += i;
    }
    return sum * sum;
  }
  public static int computeSumOfSquaresTo(int number) {
    int sum = 0;
    for (int i=number;i>0 ;i-- ) {
      sum += i * i;
    }
    return sum;
  }
  public static int computeDifferenceOfSquares(int number) {
    return  computeSquareOfSumTo(number) - computeSumOfSquaresTo(number);
  }
 
}

