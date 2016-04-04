import java.util.ArrayList;
public class Primes {
  public static boolean test(int i) {
    for(int n=2;n<i;n++){
      if(i%n == 0) {
        return false;
      }
    }
    return true;
  }

  public static void main(String args[]) {
    ArrayList<Integer> primes = new ArrayList<>();
    for(int i=0;i<1000000;i++){
      if(test(i)) {
        primes.add(i);
      }
    }
    System.out.printf("%d \n", primes.size());
  }
}
