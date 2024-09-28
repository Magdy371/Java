package Sequene;

import java.util.*;

public class DynamicArrays {
    /**
     * @param args
     */
    public static void main(String[] args) {
        ArrayList<Integer> list = new ArrayList<>();
        list.add(10);
        list.add(20);
        list.add(30);
        list.add(40);
        list.add(50);
        System.out.println(list);
        System.out.println(list.size());
        System.out.println(list.get(2));
        list.set(2, 100);
        System.out.println(list);
        Swap_Ends(list);
        shift_left(list);
    }

    public static void Swap_Ends(ArrayList<Integer> arr) {
        int lastIndex = arr.size() - 1;
        int firstElemnt = arr.get(0);
        int lastElement = arr.get(lastIndex);
        arr.set(0, lastElement);
        arr.set(lastIndex, firstElemnt);
        System.out.println(arr);
    }

    public static void shift_left(ArrayList<Integer> arr) {
        int firstElement = arr.get(0);
        if (arr.size() < 1) {
            return;
        } else {
            for (int i = 0; i < arr.size() - 1; i++) {
                arr.set(i, arr.get(i + 1));
            }
            arr.set(arr.size() - 1, firstElement);
        }
        System.out.println(arr);
    }
}
