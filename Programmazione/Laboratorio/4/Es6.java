import java.util.Scanner;

public class Es6{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		String str = t.nextLine();

		for(int i=0;i<str.length()/2;i++){
			if(str.charAt(i) != str.charAt(str.length()-1-i))
			{
				System.out.println("Non palindroma");
				System.exit(-1);
			}
		}
		System.out.println("Palindroma");
	}
	
}