package lab;

import java.util.Scanner;

public class Potencia {

	public static void main(String[] args) {
		//Ctrl + SHIFT + O
		Scanner teclado = new Scanner(System.in);
		
		System.out.println("Digite A:");
		
		int a = Integer.parseInt(teclado.nextLine());
		
		System.out.println("Digite B:");
		
		int b = Integer.parseInt(teclado.nextLine());
		
		int res = 1;
		
		while (b > 0) {
			res = res * a;
			b--;
		}
		
		System.out.println(res);

	}

}
