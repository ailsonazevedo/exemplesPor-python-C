programa
{
	
	funcao inicio()
	{
		
		real salaBruto, salLiq, pensao, PAT, plnSaude, desconto
		real INSS, baseCalc, IRRF, aliquota, deducao
			caracter pergPen, pergPat, pergAdic

		INSS = 0.0
		IRRF = 0.0
		aliquota = 0.0
		deducao = 0.0

		escreva("Informe seu salário bruto: ")
		leia(salaBruto)
	
		escreva("\nPossui alguma Pensão Alimentícia descontada diretamente da fonte?(S/N) ")
		leia(pergPen)
		se (pergPen == 'S' ou pergPen == 's')
			{
				escreva("\tIndique o valor da pensão alimentícia(R$): ")
				leia(pensao)
			}
		senao
			{
				pensao = 0.00
			}
		
		escreva("\nInforme o valor do seu PAT(Programa de Alimentação do Trabalhador): ")
		escreva ("Caso não tenha, digite '0': ")
		escreva (" ")
		leia(PAT)
		
		escreva("\nPossui plano de saúde diretamente descontado?(S/N) ")
		leia(pergPat)
		se (pergPat == 'S' ou pergPat == 's')
			{
				escreva("\tInforme o valor do plano de saúde(R$): ")
				leia(plnSaude)
			}
		senao
			{
				plnSaude = 0.00
			}
		
		escreva("Possui mais algum desconto adiconal?(S/N) ")
		leia(pergAdic)
		se (pergAdic == 'S' ou pergAdic == 's')
			{
				escreva("\tInforme o valor do desconto(R$): ")
				leia(desconto)
			}
		senao
			{
				desconto = 0.00
			}

		se (salaBruto <= 1830.29)
			{
				INSS = salaBruto * 8/100
			}
		se (salaBruto > 1830.29 e salaBruto <= 3050.52)
			{
				INSS = salaBruto * 9/100
			}
		se (salaBruto > 3050.52 e salaBruto <= 6101.06)
			{
				INSS = salaBruto * 11/100
			}
		se (salaBruto > 6101.06)
			{
				INSS = 671.12
			}

		baseCalc = salaBruto - INSS - pensao * 189.59
			
		se (baseCalc <= 1903.98)
			{
				aliquota = 0.00
				deducao = 0.00
			
			}
		se (baseCalc >= 1903.99 e salaBruto <= 2826.65)
			{
				aliquota = 7.5/100.0
				deducao = 142.80
			
			}
		se (baseCalc >= 2826.66 e salaBruto <= 3751.05)
			{
			aliquota = 15/100.0
				deducao = 354.80
			
			}
		se (baseCalc > 3751.06 e baseCalc <= 4664.68)
			{
				aliquota = 22.5/100.0
				deducao = 636.13
			
			}
		se (baseCalc > 4664.68)
			{
				aliquota = 27.5/100.0
				deducao = 869.36
			}
		IRRF = baseCalc * aliquota - deducao
		salLiq = salaBruto - (pensao + plnSaude + PAT + desconto + INSS + IRRF) //calculo do valor do salario liquido

		escreva("\n\tSeu salário Liquído: R$ " + salLiq,
			  "\n\tValor Pago ao INSS: R$ " + INSS,
		       "\n\tValor Pago ao IRRF: R$ " + IRRF)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 473; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */