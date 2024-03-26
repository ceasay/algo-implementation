# Exercice 2 : Entrer Deux Nombres et Afficher leur Produit

$num1 = Read-Host "Entrez le premier nombre"
$num2 = Read-Host "Entrez le deuxième nombre"
$num1 = [double]$num1 # Conversion en nombre
$num2 = [double]$num2 # Conversion en nombre
$produit = $num1 * $num2
Write-Output "Le produit de $num1 et $num2 est $produit"