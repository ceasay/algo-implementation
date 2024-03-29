# Récap sur l'agorthimique et PowerShell

## Algorithmique

Le point de départ pour faire l'usage de l'algorithmique est un problème à résoudre, le but étant de mettre en place une solution afin de parvenir à un object défini en amont.

Un algorithme consistera à un ensemble d'action qu'on nomme instructions dans un programme (ou application) afin de résoudre un problème donné. Il nous facilite l'organistation des étapes qui se produiront lors de l'exécution de l'algorithme sous forme d'un programme (ou application).

Il existe de nombreux alogrithmes pour différents usages, ils sont répartis en grande famille : 

- Les algorithmes de tri
- Les algorithmes de recherche
- Les algorithmes de compression
- Les algorithmes de chiffrement
- Les algorithmes d'automation

Leur usage est indispenble dans le machine learning et l'intelligence artificielle.

On dispose de plusieurs "outils" pour mettre en place un algorithme :

1. Les variables
2. Les constantes
3. Les boucles
4. Les fonctions
5. Les conditions
6. Les modules/packages/librairies

### 1. Les variables

Un variable est une donnée assignée à un pointeur (avec un nom). Sa durée est limitée à la durée d'exécution du programme. On peut stocker des données de différents types dans une variable :

- Les entiers (nombres entiers)
- Les flottants (nombres à virgule)
- Les chaînes de caractères (texte)
- Les tableaux (array, dictionnaires, tuples)
- Les booléens (vrai/faux)

### 2. Les constantes

Dans le même fonctionnement que les variables, les constantes permmettent de stocker temporairement un valeur avec les type disponible, cepandant, la valeur ne pourra pas être modifiée durant l'exécution du programme.

### 3. Les boucles

Pour éviter de répéter plusieurs fois une même instruction, on utilise les boucles. Il en existe de plusieurs types :

- La boucle `for`, qui permet de répéter une instruction un nombre de fois défini. Elle est adaptée lorsqu'il s'agit de parcourir un type de donnée comme les tableaux.
- La boucle `while`, qui permet de répéter une instruction tant qu'une condition est vraie. Elle est adaptée lorsqu'on ne connait pas le nombre de répétition à l'avance ou lorsque son arrêt doit se produire. 

### 4. Les fonctions

Pour éviter de ré-écrire plusieurs fois une même instruction dans un script, on utilise les fonctions. Cela permet également de rendre indépebdat le bloc d'insctruction du reste du script.

À l'usage, cela permet de séparer les responsabilités (sous forme de classe).

### 5. Les conditions

Les structures conditionnelles sont un ensemble d'instructions que l'on conditionnent afin de les exécuter selon un résultat recherché. Elles s'exprime avec les mots clés suivants :

- `if`, qui permet d'exécuter une instruction si une condition est vraie
- `else`, qui permet d'exécuter une instruction si la condition de `if` est fausse
- `elif`, qui permet d'exécuter une instruction si une condition est vraie et si la condition de `if` est fausse

### 6. Les modules/packages/librairies

"Réinventer la roue" est peu productif dans la conception de script (programme, application). Les modules sont un ensemble de fonctions et de classes qui permettent de mettre en place des fonctionnalités déjà existantes. On les importe dans notre script pour les utiliser.

Conseil pour leur exploitation : n'utilisez que des modules muni d'une documenttaion, autrement FUYEZ!