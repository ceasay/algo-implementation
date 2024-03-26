# Exercice 9 : Calculer la Somme de Trois Entiers Entrés
# Algorithme :
# 1. Entrer le premier entier (Num1)
# 2. Entrer le deuxième entier (Num2)
# 3. Entrer le troisième entier (Num3)
# 4. Calculer la somme (Somme) de Num1, Num2 et Num3
# 5. Afficher la somme (Somme)

$num1 = Read-Host "Entrez le premier entier"
$num2 = Read-Host "Entrez le deuxième entier"
$num3 = Read-Host "Entrez le troisième entier"
$num1 = [int]$num1 # Conversion en entier
$num2 = [int]$num2 # Conversion en entier
$num3 = [int]$num3 # Conversion en entier
$somme = $num1 + $num2 + $num3
Write-Output "La somme de $num1, $num2 et $num3 est $somme"
