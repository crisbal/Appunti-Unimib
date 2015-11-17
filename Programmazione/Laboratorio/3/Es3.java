import java.util.Scanner;

public class Es3{

	public static void main(String[] args){
		
		Scanner t = new Scanner(System.in);

		String player1, player2;
		
		do{
			System.out.print("Giocatore 1, inserisci il tuo nome: ");
			player1 = t.nextLine();
		}while(player1.equals(""));

		player2 = "Computer";

		String mossa1, mossaCPU = "";
		
		do{
			System.out.print(player1 + ", inserisci la tua mossa (carta, sasso, forbice): ");
			mossa1 =  new String(System.console().readPassword());
		}while(!mossa1.equals("carta") && !mossa1.equals("sasso") && !mossa1.equals("forbice"));

		int random = (int) (Math.random()*3);

		switch (random)
		{
			case 0:
				mossaCPU = "forbice";
				break;
			case 1:
				mossaCPU = "carta";
				break;
			case 2:
				mossaCPU = "sasso";
				break;
		}		
		System.out.println("Il Computer ha scelto " + mossaCPU);

		if(mossa1.equals(mossaCPU))
			System.out.println("Pareggio!");
		else if(mossa1.equals("carta")){
			if(mossaCPU.equals("sasso"))
			{
				System.out.println(player1 + " vince");
			} else {
				System.out.println(player2 + " vince");
			}
		}
		else if(mossa1.equals("sasso")){
			if(mossaCPU.equals("forbice"))
			{
				System.out.println(player1 + " vince");
			} else {
				System.out.println(player2 + " vince");
			}
		} else if(mossa1.equals("forbice")){
			if(mossaCPU.equals("carta"))
			{
				System.out.println(player1 + " vince");
			} else {
				System.out.println(player2 + " vince");
			}
		}
	}


}