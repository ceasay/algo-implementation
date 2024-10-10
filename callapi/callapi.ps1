# initialesPays = string
# - endpointApi = "https://restcountries.com/v3.1/alpha?codes="
# - response  = Json
# - nomPays  = string
# - capitalPays  = string
# - populationPays  = string
# - continent  = string
# - contenuHtml = string


#DEBUT
#     Inviter l'utilisateur à saisir les initiales d'un pays
#     assigner le contenu dans la variable `initialesPays`
$initialesPays = Read-Host "Entre les initiales d'un pays"

#     Préparer l'appel à l'API Restcountries
$endpointApi = "https://restcountries.com/v3.1/alpha?codes=" + $initialesPays

#     Préparer l'appel à l'API Restcountries
#         `endpointApi`=`initialesPays`

#     Lancer l'appel à l'API Restcountries

#     Récupérer la réponse de l'appel API dans un variable `response`
$response = Invoke-RestMethod -Method Get -Uri $endpointApi -ContentType "application/json"
#     Lancer l'appel à l'API Restcountries

$nomPays  = $response.translations.fra.common ? $response.translations.fra.common : $null
$capitalPays  = $response.capital ? $response.capital : $null
$populationPays  = $response.population ? $response.population :$null
$continent  = $response.region ? $response.region :$null

$date = Get-Date -Format  "dd-MM-yyyy"

#     Récupérer la réponse de l'appel API dans un variable `response`
#     assigner les valeurs à la liste des variable pour l'affichage
# $nomPays = $response.name
#     Récupérer la réponse de l'appel API dans un variable `response`
#     assigner les valeurs à la liste des variable pour l'affichage
#     Créer le document txt
#         "fiche-`initialesPays`.txt"

#         Utiliser le cmdlet `Set-Content` pour écrire le contenu dans le fichier
#         `fiche-`initialesPays`.txt
$contenu = @"
        pays: $nomPays
        capital: $capitalPays
        population: $populationPays
        continent: $continent

        recherche effectue le $date
"@


Write-Host $contenu -BackgroundColor Blue 


$nomFichier = "fiche-" + $initialesPays + ".txt"
$sortieFichier = Join-Path "C:\Users\ibrah\Documents\algo-implementation\callapi" -ChildPath $nomFichier 
$contenu | Out-File -Path $sortieFichier -Encoding UTF-8 

Write-Host "Fichier créé dans la dossier : $sortieFichier"

#         On insère le contenu avec les données dans le fichier
#     Afficher un message de fin
# FIN