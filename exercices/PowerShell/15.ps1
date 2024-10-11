
# Initialiser la variable somme à 0
$Somme = 0
# Initialiser le compteur à 1
$i = 1
Write-Host "entrer un nombre X  "
$x = Read-Host
# Tant que i est inférieur ou égal au nombre
while ($i -le $x)
 {
    # Ajouter i à la somme
    $Somme += $i
    # Incrémenter le compteur
    $i++
}

# Afficher la somme finale
Write-Host "La somme des entiers de 1 a $x est : $Somme"