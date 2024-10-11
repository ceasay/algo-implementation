
# Initialiser la variable somme à 0
$Somme = 0
# Initialiser le compteur à 1
$i = 1
# Tant que i est inférieur ou égal à 10
while ($i -le 10)
 {
    # Ajouter i à la somme
    $Somme += $i
    # Incrémenter le compteur
    $i++
}

# Afficher la somme finale
Write-Host "La somme des entiers de 1 à 10 est : $Somme"