# Exercice 4 : Afficher si un Entier Entré est Pair ou Impair
# Algorithme :
# 1. Entrer un entier (Num)
# 2. Si Num modulo 2 est égal à 0 :
#     3. Afficher "Pair"
# 4. Sinon :
#     5. Afficher "Impair"

$num = Read-Host "Entrez un entier"
$num = [int]$num # Conversion en entier
if ($num % 2 -eq 0) {
    Write-Output "Pair"
} else {
    Write-Output "Impair"
}