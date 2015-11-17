public class Es2{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		System.out.println("Inserisci il numero 1: ");
		int x = t.nextInt();

		System.out.println("Inserisci il numero 2: ");
		int y = t.nextInt();

		if(y==0)
		{
			System.out.println("Errore! Divisione per 0!");
			System.exit(666);
		}

		System.out.println(x + "/" + y + "=" + x/y);

	}
}