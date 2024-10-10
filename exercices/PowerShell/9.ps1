# Exercice 9 : Calculer la Somme de Trois Entiers Entrés

$num1 = Read-Host "Entrez le premier entier"
$num2 = Read-Host "Entrez le deuxième entier"
$num3 = Read-Host "Entrez le troisième entier"
$num1 = [int]$num1 # Conversion en entier
$num2 = [int]$num2 # Conversion en entier
$num3 = [int]$num3 # Conversion en entier
$somme = $num1 + $num2 + $num3
Write-Output "La somme de $num1, $num2 et $num3 est $somme"
