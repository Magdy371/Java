import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class SelectionSort {
    public static void main(String[] args) {
        SelectionSort obj = new SelectionSort();
        ArrayList<Integer> arr = new ArrayList<>(Arrays.asList(64, 25, 12, 22, 11));
        obj.selectionSort(arr);
        System.out.println(arr);
    }

    /**
     * Sorts the given list using selection sort.
     *
     * @param arr The list to be sorted.
     */
    public void selectionSort(ArrayList<Integer> arr) {
        int n = arr.size();
        for (int i = 0; i < n - 1; i++) {
            int minIndex = i;
            for (int j = i + 1; j < n; j++) {
                if (arr.get(j) < arr.get(minIndex)) {
                    minIndex = j;
                }
            }
            if (minIndex != i) {
                Collections.swap(arr, i, minIndex);
            }
        }
    }
}
