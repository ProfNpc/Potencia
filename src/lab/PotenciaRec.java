package lab;

import java.util.Scanner;

public class PotenciaRec {

	public static void main(String[] args) {
		// Ctrl + SHIFT + O
		Scanner teclado = new Scanner(System.in);
		
		System.out.println("Digite A:");
		
		int a = Integer.parseInt(teclado.nextLine());
		
		System.out.println("Digite B:");
		
		int b = Integer.parseInt(teclado.nextLine());
		
		int res = pot(a, b);
		
		System.out.println("Resultado:" + res);
		
	}

	private static int pot(int a, int b) {
		if (b == 0) {
			return 1;
		}
		return a * pot(a, b - 1);
	}
}
