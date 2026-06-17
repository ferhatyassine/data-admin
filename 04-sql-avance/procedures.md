# Procédures stockées

## Qu'est-ce qu'une procédure stockée ?

Un bloc de code SQL réutilisable, stocké dans la base de données.
Au lieu de réécrire la même requête, on l'appelle avec `CALL nom_procedure()`.

## Pourquoi DELIMITER //

Normalement `;` termine une instruction SQL.
Mais une procédure contient plusieurs `;` à l'intérieur.
On change temporairement le délimiteur en `//` pour que MySQL comprenne
où la procédure se termine vraiment.

## Types de paramètres

| Type | Rôle |
|------|------|
| `IN` | Donnée envoyée à la procédure (lecture) |
| `OUT` | Résultat renvoyé par la procédure |
| `INOUT` | Les deux à la fois |

## Exemple simple

```sql
CALL eleves_par_ecole(1); -- affiche les élèves de l'école 1
```

## À retenir

- Utile pour centraliser une logique réutilisée souvent
- Peut contenir des conditions (`IF`), des boucles (`WHILE`)
- Améliore la sécurité : on expose une procédure plutôt que la table directement