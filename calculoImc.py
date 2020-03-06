altura = float(input("Informe sua altura: "))
peso = float(input("Informe o seu peso: "))
imc = peso / (altura**2)

minIdeal = (18.5 * (altura * altura))
maxIdeal = (25.0 * (altura * altura))

if(imc < 15):
  print("Extremamente abaixo do peso!")

if (imc >= 15 and imc < 16):
	print("Gravemente abaixo do peso!")
if (imc >= 16 and imc < 18.5):
  print("\tAbaixo do peso ideal!")
  print("\tProcure um médico especialista o quanto antes")

if (imc >= 18.5 and imc < 25):

  print("\n\tFaixa de peso ideal!")

if (imc >= 25 and imc < 30):

  print("\n\tSobrepeso")
  print("\n\tProcure um médico especialista o quanto antes")

if (imc >= 30 and imc < 35):
  print("\n\tObesidade grau 1 ")
  print("\n\tProcure um médico especialista o quanto antes")

if (imc >= 35 and imc < 40):
  print("\n\tObesidade grau 2 (GRAVE) ")
  print("\n\tProcure um médico especialista o quanto antes")

if (imc >= 40 ):

  print("\n\tObesidade grau 3 (MÓRBIDA) ")
  print("\n\tProcure um médico especialista o quanto antes")


print("\n\tO peso ideal para você é entre, {:.2f} Kg e {:.2f} Kg ".format(minIdeal, maxIdeal))
