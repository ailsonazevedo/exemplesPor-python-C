programa
{
	
	funcao inicio()
	{
		real peso, alt, imc
		real minIdeal, maxIdeal
			escreva("Informe o seu Peso (Kg): ")
		leia(peso)
			escreva("\nInforme sua altura em metros: ")
		leia(alt)
		
		imc = (peso / (alt*alt)) //faz o calculo do imc
		minIdeal = (18.5 * (alt * alt))
		maxIdeal = (25.0 * (alt * alt))
		
		escreva("\n\tSeu IMC é " + imc)
		se (imc < 15)
			{
				escreva("\n\tExtremamente abaixo do peso! ")
			}
		se (imc >= 15 e imc < 16) 
			{
				escreva("\n\ttGravemente abaixo do peso!")
			}
		se (imc >= 16 e imc < 18.5) 
			{
				escreva("\n\tAbaixo do peso ideal!")
				escreva("\n\tProcure um médico especialista o quanto antes")	
			}
		se (imc >= 18.5 e imc < 25) 
			{
				escreva("\n\tFaixa de peso ideal!")
			}
		se (imc >= 25 e imc < 30) 
			{
				escreva("\n\tSobrepeso")
				escreva("\n\tProcure um médico especialista o quanto antes")
			}
		se (imc >= 30 e imc < 35) 
			{
				escreva("\n\tObesidade grau 1 ")
				escreva("\n\tProcure um médico especialista o quanto antes")
			}
		se (imc >= 35 e imc < 40) 
			{
				escreva("\n\tObesidade grau 2 (GRAVE) ")
				escreva("\n\tProcure um médico especialista o quanto antes")
			}
		se (imc >= 40 ) 
			{
				escreva("\n\tObesidade grau 3 (MÓRBIDA) ")
				escreva("\n\tProcure um médico especialista o quanto antes")
			}
		
		escreva("\n\tO peso ideal para você é entre ", minIdeal, "Kg e " , maxIdeal, "Kg")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */