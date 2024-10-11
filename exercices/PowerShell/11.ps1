
#Entrer l'âge de l'enfant
Write-Host "entre l'âge de l'enfant"

$age = Read-Host
#Vérifier si l'âge est valide


if ($age -le 6) {
    Write-Host "L'enfant doit avoir plus de 6 ans"
    }
    elseif ($age -ge 6 -and $age -le 7)
    {
        Write-Host "Enfant de 6 à 7 ans"
    }
    elseif($age -ge 8 -and $age -le 9) 
    {
         Write-Host "Enfant de 8 à 9 ans"
    }
    elseif($age -ge 10 -and $age -le 11) 
    {
        Write-Host "Enfant de 10 à 11 ans" 
    }
     else 
       {
        Write-Host "cadet"  
       }
     


