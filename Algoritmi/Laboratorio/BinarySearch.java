import java.util.Arrays;

public class BinarySearch{
    
    public static void main(String[] args){
        int[] array = new int[10000000];
        for(int i=0;i<array.length;i++){
          array[i] = i;
        }
        System.out.println(find(array, 0 , array.length-1, 9999999));
    }

    public static int find(int[] array, int start, int end, int toFind) {
        
        int middle = (end+start)/2;
        
        if(toFind==array[middle])
            return middle;
        
        if(start>end)
            return -1;

        if(toFind<array[middle])
            return find(array, start, middle, toFind);
        else
            return find(array, middle+1, end, toFind);        
    }
}