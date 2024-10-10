# Exercice 8 : Calculer la Valeur Absolue d'un Entier Entré

$num = Read-Host "Entrez un entier"
$num = [double]$num
$valeur_absolue = [Math]::Abs($num) # Abs est une méthode statique de la classe Math
Write-Output "La valeur absolue de $num est $valeur_absolue"