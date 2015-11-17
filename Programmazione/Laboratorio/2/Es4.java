import java.util.Scanner;

public class Es4{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		System.out.println("Inserisci il resto da dare in centesimi (max 99): ");
		int resto = t.nextInt();

		if(resto>99)
		{
			System.out.println("Massimo 99 centesimi!!!");
			System.exit(42);
		}

		System.out.println("Devo restituire " + resto + " centesimi");

		int c50 = resto/50;
		resto = resto%50;

		int c20 = resto/20;
		resto = resto%20;

		int c10 = resto/10;
		resto = resto%10;

		int c5 = resto/5;
		resto = resto%5;

		int c2 = resto/2;
		resto = resto%2;

		int c1 = resto/1;
		resto = resto%1;

		if(c50!=0)
			System.out.println(c50 + " monete da 50 centesimi");
		
		if(c20!=0)
			System.out.println(c20 + " monete da 20 centesimi");
		
		if(c10!=0)
			System.out.println(c10 + " monete da 10 centesimi");
		
		if(c5!=0)
			System.out.println(c5 + " monete da 5 centesimi");
		
		if(c2!=0)
			System.out.println(c2 + " monete da 2 centesimi");
		
		if(c1!=0)
			System.out.println(c1 + " monete da 1 centesimi");

	}	
}