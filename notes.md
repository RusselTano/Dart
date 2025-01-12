# Map Vs Object

## Map

plus flexible en terme de cle
Types de clés possibles :
Le type le plus courant pour les clés dans une Map.

```dart
Map<String, int> scores = {'Alice': 90, 'Bob': 85};
print(scores['Alice']); // 90
```

Vous pouvez utiliser des nombres comme clés.

```dart
Map<int, String> errorMessages = {404: 'Not Found', 500: 'Server Error'};
print(errorMessages[404]); // 'Not Found'
```

Même les nombres à virgule flottante peuvent être utilisés comme clés.

```dart
Map<double, String> temperatures = {36.5: 'Normal', 39.0: 'Fever'};
print(temperatures[36.5]); // 'Normal'
```

## Object

Si vous essayez d'utiliser un type différent comme clé, il sera automatiquement converti en chaîne.

```js
const obj = {};
obj[1] = "value";
console.log(obj); // { '1': 'value' }
```

Les objets ne peuvent pas être utilisés directement comme clés ; vous devrez utiliser un Map pour cela (ajouté en ES6).

```js
const objKey = { name: "Alice" };
const map = new Map();
map.set(objKey, 42);
console.log(map.get(objKey)); // 42
```

# Opérateurs et Symboles

## Ternary Operator

**Opérateur ternaire :** `?`, `:`
condition ? valeurSiVrai : valeurSiFaux;

**Null-Safe Access :**`?.`
Accéder aux membres uniquement si non-null : object?.property

## Symboles et leur usage

- **Braces ou Curly Brackets (Accolades)** : `{ }`
- **Brackets ou Square Brackets (Crochets)** : `[ ]`
- **Backticks (Apostrophes inversées)** : `` ` ``

## Opérateurs Logiques et Syntaxe Dart

### Logical NOT (Opérateur logique NON)

```dart
bool isTrue = false;
print(!isTrue); // true
```

### Null Assertion Operator

**Indique que vous êtes sûr que la valeur n'est pas `null`.**

```dart
String? nullableString = "Hello";
String nonNullableString = nullableString!;
print(nonNullableString); // "Hello"
```

## Commandes Shell / Ligne de Commande Bang (`!`)

- **Bang (`!`)**
  Utilisé pour référencer des commandes ou exécuter des instructions spéciales.

  ```bash
  !! : Réexécute la dernière commande.
  !123 : Réexécute la commande numéro 123 dans l’historique.
  !grep : Exécute la dernière commande contenant le mot "grep".
  ```

- **Double Bang (`!!`)**
  En JavaScript, `!!` est utilisé pour convertir une valeur en son équivalent booléen.

  ```javascript
  const value = "Hello";
  console.log(!!value); // true
  ```

---

### **1. Spread Operator**

Le **spread operator** (`...`) est utilisé pour **décomposer** une collection (comme un tableau, une liste, ou un objet) et **répartir ses éléments** dans un autre contexte.

#### **Principaux usages du spread operator :**

1. **Copier une collection :**

   ```javascript
   const numbers = [1, 2, 3];
   const copy = [...numbers];
   console.log(copy); // [1, 2, 3]
   ```

2. **Concaténer ou fusionner des collections :**

   ```javascript
   const a = [1, 2];
   const b = [3, 4];
   const combined = [...a, ...b];
   console.log(combined); // [1, 2, 3, 4]
   ```

3. **Passer des éléments d'un tableau en arguments :**

   ```javascript
   const nums = [1, 2, 3];
   console.log(Math.max(...nums)); // Équivaut à Math.max(1, 2, 3)
   ```

4. **En Dart : Ajouter des éléments à une collection :**
   ```dart
   List<int> numbers = [1, 2, 3];
   List<int> moreNumbers = [...numbers, 4, 5];
   print(moreNumbers); // [1, 2, 3, 4, 5]
   ```

---

### **2. Rest Operator**

Le **rest operator** (`...`) est utilisé pour **regrouper** plusieurs valeurs en une seule collection (comme un tableau ou une liste). En d'autres termes, il "capture" les restes.

#### **Principaux usages du rest operator :**

1. **Collecter des arguments restants dans une fonction :**
   En JavaScript, le rest operator est souvent utilisé pour les fonctions avec un nombre variable d'arguments.

   ```javascript
   function sum(...numbers) {
     return numbers.reduce((a, b) => a + b, 0);
   }
   console.log(sum(1, 2, 3, 4)); // 10
   ```

2. **Capturer le reste des éléments d’un tableau :**

   ```javascript
   const [first, ...rest] = [1, 2, 3, 4];
   console.log(first); // 1
   console.log(rest); // [2, 3, 4]
   ```

3. **En Dart (équivalent via `varargs`) :**
   Dart ne supporte pas directement le rest operator, mais vous pouvez utiliser des listes comme arguments nommés ou positionnels :
   ```dart
   void printNumbers(String message, List<int> numbers) {
     print('$message: ${numbers.join(", ")}');
   }
   printNumbers("Numbers", [1, 2, 3, 4]);
   ```

---

### **Différences entre Spread et Rest Operator**

| **Aspect**             | **Spread Operator**      | **Rest Operator**                         |
| ---------------------- | ------------------------ | ----------------------------------------- |
| **Symbole**            | `...`                    | `...`                                     |
| **Usage principal**    | Décompose une collection | Regroupe des éléments dans une collection |
| **Exemple (tableau)**  | `const a = [...array];`  | `const [first, ...rest] = array;`         |
| **Exemple (fonction)** | `Math.max(...array);`    | `function sum(...args) {}`                |

---

### **Résumé**

| **Opérateur** | **Nom**         | **Description**                                        |
| ------------- | --------------- | ------------------------------------------------------ |
| `...`         | Spread Operator | Décompose une collection en ses éléments individuels.  |
| `...`         | Rest Operator   | Regroupe plusieurs éléments dans une seule collection. |

