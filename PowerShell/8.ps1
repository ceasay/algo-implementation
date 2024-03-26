# Exercice 8 : Calculer la Valeur Absolue d'un Entier Entré
# Algorithme :
# 1. Entrer un entier (Num)
# 2. Calculer la valeur absolue (ValeurAbsolue) de Num
# 3. Afficher la valeur absolue (ValeurAbsolue)
$num = Read-Host "Entrez un entier"
$num = [double]$num
$valeur_absolue = [Math]::Abs($num) # Abs est une méthode statique de la classe Math
Write-Output "La valeur absolue de $num est $valeur_absolue"