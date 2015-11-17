import java.util.Scanner;

public class Es5{

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
		System.out.println(c50 + " " + (c50 > 1 || c50 == 0 ? "monete" : "moneta") + " da 50 centesimi");
		System.out.println(c20 + " " + (c20 > 1 || c20 == 0 ? "monete" : "moneta") + " da 20 centesimi");
		System.out.println(c10 + " " + (c10 > 1 || c10 == 0 ? "monete" : "moneta") + " da 10 centesimi");
		System.out.println(c5 + " " + (c5 > 1 || c5 == 0 ? "monete" : "moneta") + " da 5 centesimi");
		System.out.println(c2 + " " + (c2 > 1 || c2 == 0 ? "monete" : "moneta") + " da 2 centesimi");
		System.out.println(c1 + " " + (c1 > 1 || c1 == 0 ? "monete" : "moneta") + " da 1 centesimi");

	}	
}