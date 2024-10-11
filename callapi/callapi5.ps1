
$nom = Read-Host "Bonjour, Quel est votre nom ?" 
Start-Sleep -Milliseconds 1500  # Attends 1500 Millisecondes avant de continuer

# Message de bienvenue et d'explication du fonctionnement
Write-Host "Bienvenue dans le programme de recherche de pays !" -ForegroundColor Cyan
Write-Host "Ce programme vous permettra de connaître les informations d'un pays en fonction de ses initiales." -ForegroundColor Cyan
Write-Host "Veuillez entrer les initiales du pays (par exemple, 'fr' pour la France)." -ForegroundColor Cyan
Write-Host "Le programme vérifiera si le pays existe et affichera des informations telles que la capitale, la population, et le type de gouvernement." -ForegroundColor Cyan
Start-Sleep -Seconds 4  # Pause pour laisser le temps de lire le message

# Vérification des initiales saisies (lettres uniquement) et existence du pays
$isValidCountry = $false
while (-not $isValidCountry) {
    
    # Demander à l'utilisateur d'entrer les initiales du pays
    $initialesPays = Read-Host "Entrez les initiales d'un pays (ex : 'sn' pour le Senegal)" 
    
    Write-Host "Chargement des données ..."  -BackgroundColor Green
    Start-Sleep -Seconds 3 
    
    # Vérifier que les initiales contiennent uniquement des lettres et font 2 ou 3 caractères
    if ($initialesPays -match '^[a-zA-Z]{2,3}$') {
        
        # Préparer l'appel à l'API Restcountries
        $endpointApi = "https://restcountries.com/v3.1/alpha?codes=" + $initialesPays
        
        # Tenter l'appel à l'API Restcountries pour vérifier si le pays existe
        try {
            $response = Invoke-RestMethod -Method GET -Uri $endpointApi -ContentType "application/json"
            
            # Vérifier si une réponse valide a été renvoyée (si le pays existe)
            if ($response -and $response[0]) {
                $isValidCountry = $true  # Sortir de la boucle, les initiales sont valides
                $response = $response[0]  # Extraire les données du premier élément
            } else {
                Write-Host "Erreur : Le pays avec les initiales '$initialesPays' n'existe pas. Veuillez réessayer." -BackgroundColor Red
            }
        } catch {
            Write-Host "Erreur : un pays avec les initiales '$initialesPays' n'existe pas ou il y a un problème de connexion. Veuillez réessayer."  -BackgroundColor Red
        }

    } else {
        Write-Host "Erreur : Vous devez entrer uniquement des lettres (2 ou 3 caractères). Veuillez réessayer." -BackgroundColor Red
    }

}

# Message d'attente simulé pour donner l'impression que l'application charge des données
Write-Host "Recherche des informations pour le pays avec les initiales '$initialesPays'..."
Start-Sleep -Seconds 3  # Attendre 3 secondes pour simuler le chargement

# Récupérer les informations sur le pays
$nomPays  = if ($response.translations.fra.common) { $response.translations.fra.common } else { "Non disponible" }
$nomOfficielPays = if ($response.translations.fra.official) { $response.translations.fra.official } else { "Non disponible" }

$capitalPays  = if ($response.capital) { $response.capital[0] } else { "Non disponible" }
$continent = if ($response.region) { $response.region } else { "Non disponible" }
$populationPays  = if ($response.population) { $response.population } else { "Non disponible" }
$subregion = if ($response.subregion) { $response.subregion } else { "Non disponible" }
$independent = if ($response.independent) { "Oui" } else { "Non" }
$date = Get-Date -Format "dd-MM-yyyy"

# Déterminer si c'est une république ou un royaume à partir du nom officiel
$formeGouvernement = "Non déterminé"
if ($nomOfficielPays -match "(?i)république") {
    $formeGouvernement = "République"
} elseif ($nomOfficielPays -match "(?i)royaume") {
    $formeGouvernement = "Royaume"
} else {
    $formeGouvernement = "Autre (indéterminé)"
}

# Création du contenu avec les données récupérées
$contenu = @"
    Nom : $nom
    Initiales du pays : $initialesPays
    Type de gouvernement : $formeGouvernement
    Recherche effectuée le : $date
    
        Pays : $nomPays
        Nom officiel : $nomOfficielPays
        Capitale : $capitalPays
        Population : $populationPays
        Continent : $continent
        Subregion : $subregion
        Indépendant : $independent
"@

# Afficher les informations dans la console
Write-Host $contenu 

# Créer le fichier texte avec les informations
$nomFichier = "fiche-" + $initialesPays + ".txt"
$sortieFichier = Join-Path "C:\Users\ibrah\Documents\algo-implementation\callapi" -ChildPath $nomFichier 
$contenu | Out-File -Path $sortieFichier -Encoding UTF-8 

Write-Host "Fichier créé dans le dossier : $sortieFichier"

# Afficher un message de fin
Write-Host "Programme terminé."
