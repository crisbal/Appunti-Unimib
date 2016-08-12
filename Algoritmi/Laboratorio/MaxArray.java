import java.util.Arrays;

public class MaxArray{
    
    public static void main(String[] args){
        int[] array = new int[20];
        for(int i=0;i<array.length;i++){
            array[i] = (int) (Math.random()*100);
        }

        System.out.println(Arrays.toString(array));
        System.out.println(max(array, 0 , array.length-1));
    }

    public static int max(int[] array, int start, int end) {
        if(start==end){
            return array[start];
        }
        int middle = (end+start)/2;
        int m1 = max(array, start, middle);
        int m2 = max(array, middle+1, end);
        return Math.max(m1,m2);
    }

}