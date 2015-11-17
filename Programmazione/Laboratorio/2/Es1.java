public class Es1{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		System.out.println("Inserisci il numero: ");
		int x = t.nextInt();

		if(x<0)
			x = x * -1;

		System.out.println("Il valore assoluto del numero inserito è " + x);
	}
}