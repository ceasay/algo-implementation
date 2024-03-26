# Exercice 3 : Permuter le Contenu de Deux Entiers A et B et les Afficher

$a = Read-Host "Entrez le premier entier"
$b = Read-Host "Entrez le deuxième entier"
$a, $b = $b, $a
Write-Output "Après permutation, A = $a et B = $b"