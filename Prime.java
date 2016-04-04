import java.util.ArrayList;
public class Prime {
  public static boolean test(int i) {
    for(int n=2;n<i;n++){
      if(i%n == 0) {
        return false;
      }
    }
    return true;
  }

  public static void main(String args[]) {
    if(args.length == 0){
      System.out.println("please call this method with a range argument ex \"java Prime 1000\"");
      System.exit(0);
    }
    int range = Integer.parseInt(args[0]);
    ArrayList<Integer> primes = new ArrayList<>();
    for(int i=0;i<range;i++){
      if(test(i)) {
        primes.add(i);
      }
    }
    System.out.printf("%d \n", primes.size());
  }
}
