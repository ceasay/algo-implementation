# Exercice 3 : Permuter le Contenu de Deux Entiers A et B et les Afficher
# Algorithme :
# 1. Entrer le premier entier (A)
# 2. Entrer le deuxième entier (B)
# 3. Permuter les valeurs de A et B
# 4. Afficher les entiers après permutation A et B

$a = Read-Host "Entrez le premier entier"
$b = Read-Host "Entrez le deuxième entier"
$a, $b = $b, $a
Write-Output "Après permutation, A = $a et B = $b"