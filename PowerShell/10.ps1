# Exercice 10 : Calculer le Prix TTC avec Remise d'un Magasin
# Algorithme :
# 1. Entrer le prix total hors TVA (PrixHorsTVA)
# 2. Si le prix total est supérieur à 200 DH :
#     3. Appliquer une remise de 15%
# 4. Calculer le prix total avec TVA (PrixTTC) en tenant compte de la remise et de la TVA à 20%
# 5. Afficher le prix total avec TVA (PrixTTC)

$prix_hors_tva = Read-Host "Entrez le prix total hors TVA"
$prix_hors_tva = [double]$prix_hors_tva
if ($prix_hors_tva -gt 200) {
    $prix_ttc = $prix_hors_tva * 0.85 * 1.2
} else {
    $prix_ttc = $prix_hors_tva * 1.2
}
Write-Output "Le prix total TTC est $prix_ttc"