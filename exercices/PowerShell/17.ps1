
# Initialiser la variable somme à 0
$Somme = 0

# Utiliser une boucle for pour calculer la somme des entiers de 1 à 10
for ($i = 1; $i -le 10; $i++) {
    # Ajouter i à la somme
    $Somme += $i
}
# Afficher la somme finale
Write-Host "La somme des entiers de 1 à 10 est : $Somme"
