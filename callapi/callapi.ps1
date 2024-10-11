
#     Collecte des informations du candidat
$nom = Read-Host "Bonjour, Quel est votre nom ?" 
Start-Sleep -Milliseconds 1500  # Attends 1500 Millisecondes avant de continuer

$initialesPays = Read-Host "Entre les initiales du pays sur le quel vous voulez des informations"

Write-Host "Chargement des données ..."  -BackgroundColor Green

Start-Sleep -Seconds 3        

$endpointApi = "https://restcountries.com/v3.1/alpha?codes=" + $initialesPays

$response = Invoke-RestMethod -Method Get -Uri $endpointApi -ContentType "application/json"

$nomPays  = $response.translations.fra.common ? $response.translations.fra.common : $null    

$capitalPays  = $response.capital ? $response.capital : $null 

$continent = $response.region ? $response.region : $null

$populationPays  = $response.population ? $response.population :$null 

$subregion = $response.subregion 

$independent = $response.independent ? $response.independent : $null 

$date = Get-Date -Format  "dd-MM-yyyy"


#         `fiche-`initialesPays`.txt
$contenu = @"
        pays: $nomPays
        capital: $capitalPays
        population: $populationPays
        continent: $continent
        subregion : $subregion
        independent: $independent
        recherche effectue le $date

"@

Write-Host $contenu 

$nomFichier = "fiche-" + $initialesPays + ".txt"
$sortieFichier = Join-Path "C:\Users\ibrah\Documents\algo-implementation\callapi" -ChildPath $nomFichier 
$contenu | Out-File -Path $sortieFichier -Encoding UTF-8 

Write-Host "Fichier créé dans la dossier : $sortieFichier"

#         On insère le contenu avec les données dans le fichier
#     Afficher un message de fin
# FIN