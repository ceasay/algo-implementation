Write-Host "Merci d'entrer le numero du mois "
$mois = [int] (Read-Host)
# Vérifier le numéro du mois et afficher le nom du mois correspondan
switch ($mois) {
    1 { Write-Host "Janvier" }
    2 { Write-Host "Février" }
    3 { Write-Host "Mars" }
    4 { Write-Host "Avril" }
    5 { Write-Host "Mai" }
    6 { Write-Host "Juin" }
    7 { Write-Host "Juillet" }
    8 { Write-Host "Août" }
    9 { Write-Host "Septembre" }
    10 { Write-Host "Octobre" }
    11 { Write-Host "Novembre" }
    12 { Write-Host "Décembre" }
    default { Write-Host "Numéro de mois invalide. Veuillez entrer un numéro entre 1 et 12." }
}