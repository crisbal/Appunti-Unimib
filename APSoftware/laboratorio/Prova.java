class Pianta {

	private String nome;
	private float altezza;

	public Pianta(String nome) {
		this.nome = nome;
		this.altezza = 0;
	}

	public void setAltezza(float a) {
		this.altezza = a;
	}
}

class Libreria {

	private ArrayList<Pianta> piante;

	public Libreria(){
		piante = new ArrayList<>();
	}

	public void aggiungiPianta(Pianta p) {
		piante.add(p);
	}

	public void rimuoviPianta(String n) {
		for(int i=0; i<piante.size(); i++){
			if(piante.get(i).nome.equals(n)) {
				piante.remove(i);
				break;
			}
		}
	}

	public void getPianta(String n) {
		for(int i=0; i<piante.size(); i++){
			if(piante.get(i).nome.equals(n))
				return piante.get(i)
		}
	}

	public void setAltezzaPianta(Pianta p, float altezza) {
		p.setAltezza(altezza);
	}
}

public class Prova {
	public static void main(String[] args) {
		Libreria l = new Libreria();

		l.aggiungiPianta("Gelsomino");

		Pianta gelsomino = l.getPianta("Gelsomino");
		l.setAltezzaPianta(gelsomino, 12);

		l.rimuoviPianta("Gelsomino");	
	}
}