# Exercice 6 : Ajouter un Commentaire sur une Note Entrée
# Algorithme :
# 1. Entrer une note (Note)
# 2. Si la note est supérieure à 10 :
#     3. Afficher "Validé"
# 4. Sinon :
#     5. Afficher "Non validé"

$note = Read-Host "Entrez la note"
$note = [double]$note
if ($note > 10) {
    Write-Output "Validé"
} else {
    Write-Output "Non validé"
}