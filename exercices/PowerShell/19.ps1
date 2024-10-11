# Utiliser une boucle for pour afficher la table de multiplication de 5
for ($i = 1; $i -le 10; $i++) {
    # Calculer le produit de 5 par i
    $Produit = 5 * $i

    # Afficher le résultat de la multiplication
    Write-Host "5 * $i = $Produit"
}
