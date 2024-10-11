[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 
#Write-Host "éàçè"

# Structure Simple

# # nouveauCandidat
# DEBUT
#     SIMULER un chargement de données 3 secondes
#     PROMPT "Quel est votre nom ?"
#         ASSIGNER nom
#         SIMULER un chargement de données 1.5 seconde
#     PROMPT "Quel est votre prénom ?"
#         ASSIGNER prenom
#         SIMULER un chargement de données 1.5 seconde
#     PROMPT 
#         "Pour quel poste postulez-vous ?
#             [1] Chef de projet
#             [2] Développeur
#             [3] Designer
#             [4] DevOps
#         "
#          CAS "1"
#             ASSIGNER poste "Chef de projet"
#          CAS "2"
#             ASSIGNER poste "Développeur"
#         SIMULER un chargement de données 1.5 seconde
#          CAS "3"
#             ASSIGNER poste "Designer"
#          CAS "4"
#             ASSIGNER poste "DevOps"
#         FINCAS
#     PROMPT "Quel sont vos prétentions salariales (par an, ex. 25000.00) ? " 
#         ASSIGNER salaire
#     PROMPT "À partir de quelle date pourriez-voud disponible ? (ex. 01/01/2024)"
#         ASSIGNER disponibilite
#     PROMPT "Quelles sont vos motivations pour le poste ? "
#         ASSIGNER motivations
#     SIMULER un chargement de données 1.5 seconde
#     AFFICHER "Merci, nous vous remercions. Votre candidature est enregistrée. Vous recevrez un email d'informations d'avancement."
# FIN

function nouveauCandidat {
    #     Simulation d'un chargement initial
    Write-Host "Chargement des données ..." -NoNewLine
    Start-Sleep -Seconds 3
    Write-Host "Terminé ..." -ForegroundColor Green

    #     Collecte des informations du candidat
    $nom = Read-Host "Quel est votre nom ?" 
    Start-Sleep -Milliseconds 1500  # Attends 1500 Millisecondes avant de continuer

    $prenom = Read-Host "Quel est votre prenom ?" 
    Start-Sleep -Milliseconds 1500  # Attends 1500 Millisecondes avant de continuer

    
    $posteOption= @" 
Pour quel poste postulez-vous ?
    [1] Chef de projet
    [2] Développeur
    [3] Designer
    [4] DevOps
"@

$postChoix = Read-Host $posteOption

switch ($postChoix) {
    #Write-Host "Chef de projet ou Développeur ou  Designerou DevOps?."
    "1"	{ $poste ="Chef de projet" }
    "2"	{ $poste ="Développeur" }
    "3"	{ $poste ="Designer" }
    "4"	{ $poste ="DevOps" }
    default	{ 
        Write-Host "Choix non valide. Par défaut, le poste sera 'Non spécifié'." -ForegroundColor Yellow
        $poste ="Non spécifié"
    }
}
Start-Sleep -Milliseconds 1500  # Attends 1500 Millisecondes avant de continuer
$salaire = Read-Host "Quelles sont vos prétentions salariales (par an, ex. 25000.00) ?"   
$disponibilite = Read-Host "A partir de quelle date pourriez-vous être disponine (ex. 01/01/2024)  ?"
$motivations = Read-Host "Quelles sont vos motivations pour le poste  ?"

    #     Simulation de l'enregistrement
    Write-Host "Eenregistrement de votre candidature." -NoNewLine
    Start-Sleep -Milliseconds 1500  # Attends 1500 Millisecondes avant de continuer
    Write-Host "Terminé." -ForegroundColor Green

    #     Message de Confirmation
    Write-Host "Nous vous remercions. Votre canddature est enregistrée. Vous recevrez un email d'informations d'avancement" -ForegroundColor Cyan
    

    #     Création  d'un fichier texte avec les informations collectées
    $date = Get-Date -Format "dd_MM_yyyy"
    echo "" >> $nom  + $date + ".txt"

    #     Retourne les informations collectées
    return @{
        Nom =$nom                       # Chaîne de caractères
        Prenom =$prenom                 # Chaîne de caractères
        Poste =$poste                   # Chaîne de caractères
        Salaire =$salaire               # Décimal
        Disponibilite =$disponibilite   # Chaîne de caractères
        Motivations =$motivations      # Chaîne de caractères

    }

}
function Start-RecruitmentProcess {
# Déclaration des variables
$nom = $prenom = $poste = $salaire = $disponibilite = $motivations = $null

# Message de bienvenue
Write-Host @"
____                        ____         __ _   
|  _ \ _____      _____ _ __/ ___|  ___  / _| |_ 
| |_) / _ \ \ /\ / / _ \ '__\___ \ / _ \| |_| __|
|  __/ (_) \ V  V /  __/ |   ___) | (_) |  _| |_ 
|_|   \___/ \_/\_/ \___|_|  |____/ \___/|_|  \__|

SAS PowerSoft - ESN Spécialisée en DevOps
-------------------------------------------------
"@
Write-Host "Bienvenue dans le processus de recrutement de PowerSoft" -ForegroundColor Cyan

# Simulation d'un chargement
Write-Host "Chargement..." -NoNewline
Start-Sleep -Seconds 3
Write-Host " Terminé" -ForegroundColor Green

Write-Host "Le processus prendra 3 à 5 minutes. Êtes-vous prêt(e) ?" -ForegroundColor Yellow

$reponse = Read-Host "Oui ou Non (o/n) ?"

if ($reponse -eq "Oui" -or $reponse -eq "oui" -or $reponse -eq "o" -or $reponse -eq "O") {
# Appel de la fonction nouveauCandidat (supposée être définie ailleurs)
nouveauCandidat
}
else {
Write-Host "Vous n'êtes pas prêt(e) ? Revenez plus tard." -ForegroundColor Red
exit
    }
}
Start-RecruitmentProcess