# Exercice 5 : Afficher le Plus Grand des Trois Entiers Entrés

$num1 = Read-Host "Entrez le premier entier"
$num2 = Read-Host "Entrez le deuxième entier"
$num3 = Read-Host "Entrez le troisième entier"
$num1 = [int]$num1
$num2 = [int]$num2
$num3 = [int]$num3
$max = [Math]::Max($num1, $num2, $num3) # Max est une méthode statique de la classe Math
Write-Output "Le plus grand des trois nombres est $max"