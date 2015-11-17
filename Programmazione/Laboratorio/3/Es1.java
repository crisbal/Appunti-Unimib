import java.util.Scanner;

public class Es1{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		int vTeoria,vPratico;

		do{
			System.out.print("Inserisci il voto dello scritto (tra -8 e 8): ");
			vTeoria = t.nextInt();
		}while(vTeoria < -8 || vTeoria > 8);

		do{
			System.out.print("Inserisci il voto del pratico (tra 0 e 24): ");
			vPratico = t.nextInt();
		}while(vPratico < 0 || vPratico > 24);

		System.out.println(vTeoria + vPratico);

		if(vTeoria < 1 && (vTeoria + vPratico) >= 18) {
			System.out.println("Sei bocciato! Controllo smanettone! Devi studiare di piu' la teoria!");
		}
		else if(vTeoria <= 0 && vPratico < 18) {
			System.out.println("Sei bocciato! Devi studiare di piu' la teoria e fare esercizi!");
		}
		else if(vTeoria > 0 && (vTeoria + vPratico) < 18) {
			System.out.println("Sei bocciato! Devi fare esercizi!");
		}
		else if((vTeoria + vPratico) > 30) {
			System.out.println("30 e lode!");
		} else {
			System.out.println("Il tuo voto è " + (vTeoria+vPratico));
		}
	}
}