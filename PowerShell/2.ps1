# Exercice 2 : Entrer Deux Nombres et Afficher leur Produit
# Algorithme :
# 1. Entrer le premier nombre (Num1)
# 2. Entrer le deuxième nombre (Num2)
# 3. Calculer le produit (Produit) comme étant Num1 multiplié par Num2
# 4. Afficher le produit (Produit)

$num1 = Read-Host "Entrez le premier nombre"
$num2 = Read-Host "Entrez le deuxième nombre"
$num1 = [double]$num1 # Conversion en nombre
$num2 = [double]$num2 # Conversion en nombre
$produit = $num1 * $num2
Write-Output "Le produit de $num1 et $num2 est $produit"