package org.example;
import java.util.Arrays;

public class EvenOddSortDescending {

    public static void main(String[] args) {
        int[] inputNumber = {3, 2, 5, 1, 8, 9, 6};
        int[] outputNumber = sortEvenOddDescending(inputNumber);
        System.out.println(Arrays.toString(outputNumber));
    }

    public static int[] sortEvenOddDescending(int[] arr) {
        // Separate even and odd numbers
        int[] even = Arrays.stream(arr).filter(x -> x % 2 == 0).toArray();
        int[] odd = Arrays.stream(arr).filter(x -> x % 2 != 0).toArray();

        // Sort even and odd arrays in descending order
        Arrays.sort(even);
        Arrays.sort(odd);

        // Reverse the order of even array
        for (int i = 0; i < even.length / 2; i++) {
            int temp = even[i];
            even[i] = even[even.length - i - 1];
            even[even.length - i - 1] = temp;
        }

        // Reverse the order of odd array
        for (int i = 0; i < odd.length / 2; i++) {
            int temp = odd[i];
            odd[i] = odd[odd.length - i - 1];
            odd[odd.length - i - 1] = temp;
        }

        // Concatenate even and odd arrays
        int[] result = new int[even.length + odd.length];
        System.arraycopy(even, 0, result, 0, even.length);
        System.arraycopy(odd, 0, result, even.length, odd.length);

        return result;
    }
}
