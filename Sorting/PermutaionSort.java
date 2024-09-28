package Sorting;

import java.util.Arrays;

public class PermutaionSort {
    public static void main(String[] args) {
        int[] array = { 3, 1, 2 };
        PermutaionSort sorter = new PermutaionSort();
        sorter.permuteSort(array);
        System.out.println(Arrays.toString(array));
    }

    public void permuteSort(int[] array) {
        permute(array, 0);
    }

    private boolean permute(int arr[], int start) {
        if (start == arr.length) {
            if (isSorte(arr)) {
                return true;
            }
            return false;
        }
        for (int i = start; i < arr.length; i++) {
            swap(arr, start, i);
            if (permute(arr, start + 1)) {
                return true;
            }
            swap(arr, start, i);
        }
        return false;
    }

    private void swap(int arr[], int i, int j) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    private boolean isSorte(int[] arr) {
        for (int i = 0; i < arr.length - 1; i++) {
            if (arr[i] > arr[i + 1]) {
                return false;
            }
        }
        return true;
    }
}
