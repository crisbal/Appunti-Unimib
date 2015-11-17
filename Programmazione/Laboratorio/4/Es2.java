import java.util.Scanner;

public class Es2{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		System.out.println("Inserisci una frase: ");
		String str = t.nextLine();

		while(str.charAt(0) == ' ' || str.charAt(0) == '\t'){
			str = str.substring(1);
		}

		while(str.charAt(str.length()-1) == ' ' || str.charAt(str.length()-1) == '\t'){
			str = str.substring(0,str.length()-2);
		}

		System.out.println("é" + str + "è");
		if(str.length() == 0)
		{
			System.out.println("Non ci sono parole nella frase");
		}else if (str.indexOf(" ") == -1){
			System.out.println("C'è una sola parola!");
			System.out.println("Lunghezza parola: " + str.length());
		}else{ //piu parole
			System.out.println("La frase contiene piu' parole");

			int spazio = str.indexOf(" ");
			String primaParola = str.substring(0,spazio);

			System.out.println(primaParola);

			System.out.println(str.substring(str.lastIndexOf(" ")+1));
		}
		
	}
}