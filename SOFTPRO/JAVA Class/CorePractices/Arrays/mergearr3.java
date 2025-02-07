 class MergeArrays {
    public static void main(String[] args) {
        int[] a = {1, 2, 3};
        int[] b = {4, 5, 6, 7};
        int l1 = a.length;
        int l2 = b.length;

        // Determine the smaller length between l1 and l2
        int smallerLength = Math.min(l1, l2);

        for (int i = 0; i < smallerLength; i++) {
            a[l1 + i] = b[i];
        }

        // Print the merged array
        for (int num : a) {
            System.out.print(num + " ");
        }
    }
}
