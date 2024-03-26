# Exercice 4 : Afficher si un Entier Entré est Pair ou Impair

$num = Read-Host "Entrez un entier"
$num = [int]$num # Conversion en entier
if ($num % 2 -eq 0) {
    Write-Output "Pair"
} else {
    Write-Output "Impair"
}