import java.util.Scanner;

public class Es5{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		int n = t.nextInt();
		
		int somma = 0;

		for(int i=0;i<n;i++)
		{
			System.out.println("Numero " + i);
			somma+=t.nextInt();
		}

		double media = (double) somma/n;

		System.out.println("Somma: " + somma);
		System.out.println("Media: " + media);

	}
}