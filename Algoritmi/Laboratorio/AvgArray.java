import java.util.Arrays;

public class AvgArray{
    
    public static void main(String[] args){
        int[] array = {1,2,3,4,5};
        //for(int i=0;i<array.length;i++){
          //  array[i] = (int) (Math.random()*100);
        //}

        System.out.println(Arrays.toString(array));
        System.out.println(avg(array, 0 , array.length-1));
    }

    public static int avg(int[] array, int start, int end) {
        if(start==end){
            return array[start];
        }

        int middle = (end+start)/2;
        int a1 = avg(array, start, middle);
        int a2 = avg(array, middle+1, end);

        return (a1*middle+a2*(end-middle))/end;
    }

}