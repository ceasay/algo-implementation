# Récap sur l'agorthimique et PowerShell

## Algorithmique

Le point de départ pour faire l'usage de l'algorithmique est un problème à résoudre, le but étant de mettre en place une solution afin de parvenir à un objet défini en amont.

Un algorithme consistera à un ensemble d'action qu'on nomme instructions dans un programme (ou application) afin de résoudre un problème donné. Il nous facilite l'organistation des étapes qui se produiront lors de l'exécution de l'algorithme sous forme d'un programme (ou application).

Il existe de nombreux alogrithmes pour différents usages, ils sont répartis en grande famille : 

- Les algorithmes de tri
- Les algorithmes de recherche
- Les algorithmes de compression
- Les algorithmes de chiffrement
- Les algorithmes d'automatisation

Leur usage est indispensable dans le machine learning et l'intelligence artificielle.

On dispose de plusieurs "outils/concepts" pour mettre en place un algorithme :

1. Les variables
2. Les constantes
3. Les boucles
4. Les fonctions
5. Les conditions
6. Les modules/packages/librairies

### 1. Les variables

Une variable est une donnée assignée à un pointeur (un nom/id). Sa durée est limitée à la durée d'exécution du programme. On peut stocker des données de différents types dans une variable :

- Les entiers (nombres entiers)
- Les flottants (nombres à virgule)
- Les chaînes de caractères (texte)
- Les tableaux (array, dictionnaires, tuples)
- Les booléens (vrai/faux)
- Les objets (classes, instances)

### 2. Les constantes

Dans le même fonctionnement que les variables, les constantes permettent de stocker temporairement une valeur de différent types, cependant, la valeur ne pourra pas être modifiée durant l'exécution du programme, elle est constante.

### 3. Les boucles

Pour éviter de répéter plusieurs fois une même instruction, on utilise les boucles. Il en existe de plusieurs types :

- La boucle `for`, qui permet de répéter une instruction un nombre de fois défini. Elle est adaptée lorsqu'il s'agit de parcourir un type de donnée comme les tableaux.
- La boucle `while`, qui permet de répéter une instruction tant qu'une condition est vraie. Elle est adaptée lorsqu'on ne connait pas le nombre de répétition à l'avance ou lorsque son arrêt doit se produire lorsque la condition est remplie. 

### 4. Les fonctions

Pour éviter de ré-écrire plusieurs fois les mêmes instructions dans un script, on utilise les fonctions. Cela permet également de rendre indépendant le bloc d'insctructions du reste du script et de faire appel à la fonction lorsqu'on en a besoin.

À l'usage, cela permet de séparer les responsabilités sous forme de classe et de faire appel à elles. On les nomme dans ce cas des méthodes.

ATTENTION : toutes variable déclarée dans une fonction est locale à cette fonction, elle n'est pas accessible en dehors de la fonction. Il faut dans ce cas retourner la valeur de la variable pour la rendre accessible en dehors de la fonction.

### 5. Les conditions

Les structures conditionnelles sont un ensemble d'instructions que l'on conditionne afin de les exécuter selon un résultat recherché. Elles s'exprime avec les mots clés suivants :

- `if`, qui permet d'exécuter une instruction si une condition est vraie
- `else`, qui permet d'exécuter une instruction si la condition de `if` est fausse
- `elif` (en python), qui permet d'exécuter une instruction si une condition est vraie et si la condition de `if` est fausse

### 6. Les modules/packages/librairies

"Réinventer la roue" est peu productif dans la conception de script (programme, application). Les modules sont un ensemble de fonctions et de classes qui permettent de mettre en place des fonctionnalités déjà existantes. On les importe dans notre script pour les utiliser.

Conseil pour leur exploitation : n'utilisez que des modules muni d'une documenttaion, autrement FUYEZ!

---

## PowerShell

PowerShell est un langage de scripting qui permet de créer des programme (ou application) comme tout autre langage de programmation. Il est développé par Microsoft et est basé sur le framework .NET.

### Son usage

**Pour les NetOps (Administrateurs Réseau)**

En tant qu'administrateurs réseau, PowerShell offre plusieurs avantages :

##### Automatisation des Tâches Réseau

PowerShell permet d'automatiser les tâches de configuration, de surveillance et de maintenance des équipements réseau tels que les routeurs, les commutateurs et les pare-feu.

##### Gestion des Serveurs

Les administrateurs réseau peuvent utiliser PowerShell pour gérer les serveurs Windows, configurer des services réseau tels que DHCP, DNS, et Active Directory, et automatiser les processus de sauvegarde et de restauration.

##### Surveillance du Réseau

PowerShell facilite la création de scripts pour surveiller l'état du réseau, collecter des données de performance, et générer des rapports sur l'utilisation des ressources et les incidents.

**Pour les DevOps (Développeurs et Administrateurs
Système)**

Pour les professionnels DevOps, PowerShell est également un outil essentiel :

##### Automatisation des Déploiements
PowerShell permet d'automatiser les déploiements d'applications, en créant des scripts pour installer, configurer et mettre à jour les logiciels sur les serveurs et les environnements de développement, de test et de production.

##### Gestion de l'Infrastructure en Code

Avec des outils tels que PowerShell Desired State Configuration (DSC), les équipes DevOps peuvent décrire l'état désiré de leur infrastructure sous forme de code, facilitant ainsi la gestion et la mise à
jour de l'ensemble du système.

##### Intégration et Livraison Continues (CI/CD)

PowerShell peut être utilisé dans les pipelines CI/CD pour automatiser les tests, la construction et le déploiement des applications, ce qui accélère le cycle de développement et garantit des déploiements fiables et cohérents.

##### Gestion des Conteneurs
Avec des modules comme Docker PowerShell Module, les professionnels DevOps peuvent gérer des conteneurs Docker directement à partir de PowerShell, simplifiant ainsi le déploiement et la gestion des applications conteneurisées.