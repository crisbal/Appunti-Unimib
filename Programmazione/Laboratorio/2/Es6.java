import java.util.Scanner;

public class Es6{

	public static void main(String[] arghs)
	{
		Scanner t = new Scanner(System.in);

		System.out.println("Inserisci Saldo: ");

		float saldo = t.nextFloat();

		System.out.println("Saldo originale: "+ saldo);

		if(saldo<0)
		{
			saldo = saldo - 8;
		}
		else
		{
			saldo = saldo + (saldo*2/100);
		}

		System.out.println("Saldo finale: "+ saldo);

	}
}
