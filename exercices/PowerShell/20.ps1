# Utiliser une boucle for pour afficher la table de multiplication de x
Write-Host "entrer un nombre x "
$x = Read-Host
$x =[int]$x

for ($i = 1; $i -le 10; $i++)
 {
    # Calculer le produit de x par i
    $Produit = $x * $i
  # Afficher le résultat de la multiplication
  Write-Host $x * $i = $Produit

}
