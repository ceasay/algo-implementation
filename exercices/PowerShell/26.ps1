# Initialiser le maximum à la plus petite valeur possible
$Max 
$Min
# Pour chaque itération de i allant de 1 à 10
for ($i = 1; $i -le 10; $i++) {
    # Entrer un entier
    $Entier = (Read-Host "Entrez l'entier $i") 

    $Entier =[int]$Entier

    # Si l'entier est supérieur à $Max
    if ($Entier -gt $Max)
    {
        # Mettre à jour $Max
        $Max = $Entier  
    }
    #Si l'entier est inferieur  à $Min
    if ($Entier -le $Min)
    {
        # Mettre à jour $Max
        $Min = $Entier
    }
}
# Afficher le maximum après avoir terminé la saisie
Write-Host "Le plus grand entier trouvé est : $Max et le plus petit nombre est :$Min" 

    