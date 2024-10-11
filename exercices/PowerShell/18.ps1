
# Initialiser la variable somme à 0
Write-Host "entrer un nonbre x"
$x = read-host 
$Somme = 0
# Utiliser une boucle for pour calculer la somme des entiers de 1 à 1n
for ($i = 1; $i -le $x; $i++) {
    # Ajouter i à la somme
    $Somme += $i
}
# Afficher la somme finale
Write-Host "La somme des entiers de 1 à $x est : $Somme"