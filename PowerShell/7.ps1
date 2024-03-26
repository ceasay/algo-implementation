# Exercice 7 : Demander Deux Nombres M et N et Informer sur le Signe de leur Produit

$m = Read-Host "Entrez le premier nombre"
$n = Read-Host "Entrez le deuxième nombre"
$m = [double]$m
$n = [double]$n
$produit = $m * $n
if ($produit -gt 0) {
    Write-Output "Positif"
} elseif ($produit -lt 0) {
    Write-Output "Négatif"
} else {
    Write-Output "Nul"
}