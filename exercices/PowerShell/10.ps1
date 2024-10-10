# Exercice 10 : Calculer le Prix TTC avec Remise d'un Magasin

$prix_hors_tva = Read-Host "Entrez le prix total hors TVA"
$prix_hors_tva = [double]$prix_hors_tva
if ($prix_hors_tva -gt 200) {
    $prix_ttc = $prix_hors_tva * 0.85 * 1.2
} else {
    $prix_ttc = $prix_hors_tva * 1.2
}
Write-Output "Le prix total TTC est $prix_ttc"