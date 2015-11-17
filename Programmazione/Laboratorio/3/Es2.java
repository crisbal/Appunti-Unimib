import java.util.Scanner;

public class Es2{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		String player1, player2;
		
		do{
			System.out.print("Giocatore 1, inserisci il tuo nome: ");
			player1 = new String(System.console().readPassword());
		}while(player1.equals(""));

		do{
			System.out.print("Giocatore 2, inserisci il tuo nome: ");
			player2 = new String(System.console().readPassword());
		}while(player2.equals(""));

		String mossa1, mossa2;

		do{
			System.out.print(player1 + ", inserisci la tua mossa (carta, sasso, forbice): ");
			mossa1 = new String(System.console().readPassword());
		}while(!mossa1.equals("carta") && !mossa1.equals("sasso") && !mossa1.equals("forbice"));

		do{
			System.out.print(player2 + ", inserisci la tua mossa (carta, sasso, forbice): ");
			mossa2 = new String(System.console().readPassword());
		}while(!mossa2.equals("carta") && !mossa2.equals("sasso") && !mossa2.equals("forbice"));
		
		if(mossa1.equals(mossa2))
			System.out.println("Pareggio!");
		else if(mossa1.equals("carta")){
			if(mossa2.equals("sasso"))
			{
				System.out.println(player1 + " vince");
			} else {
				System.out.println(player2 + " vince");
			}
		}
		else if(mossa1.equals("sasso")){
			if(mossa2.equals("forbice"))
			{
				System.out.println(player1 + " vince");
			} else {
				System.out.println(player2 + " vince");
			}
		} else if(mossa1.equals("forbice")){
			if(mossa2.equals("carta"))
			{
				System.out.println(player1 + " vince");
			} else {
				System.out.println(player2 + " vince");
			}
		}
	}


}