# Exercice 6 : Ajouter un Commentaire sur une Note Entrée

$note = Read-Host "Entrez la note"
$note = [double]$note
if ($note > 10) {
    Write-Output "Validé"
} else {
    Write-Output "Non validé"
}