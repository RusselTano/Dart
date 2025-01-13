import 'dart:io';
import 'dart:math';

int validateNumberOfRounds(String? input) {
  if (input != null) {
    int? numberOfRounds = int.tryParse(input);
    if (numberOfRounds != null && numberOfRounds > 0) {
      return numberOfRounds;
    }
  }
  throw ("⚠️ Le nombre de tours est invalide. Veuillez entrer un entier positif.");
}

String findWinner(String userChoice, String cpuChoice) {
  if (userChoice == cpuChoice) {
    return "Egalite";
  }
  if (userChoice == "R" && cpuChoice == "C" ||
      userChoice == "C" && cpuChoice == "P" ||
      userChoice == "P" && cpuChoice == "R") {
    return "Joueur";
  }
  return "CPU";
}

String getUserChoice(List<String> choices) {
  while (true) {
    print("Faites votre choix : R pour Roche, P pour Papier, C pour Ciseaux.");
    String? input = stdin.readLineSync();

    if (input != null && choices.contains(input.toUpperCase())) {
      return input.toUpperCase();
    } else {
      print("⚠️ Choix invalide. Veuillez entrer R, P ou C.");
    }
  }
}

void displayRules() {
  print("""
🎮 Bienvenue au jeu Roche-Papier-Ciseaux 🎮
Les règles sont simples :
- ✊ Roche bat ✌️ Ciseaux
- ✌️ Ciseaux bat ✋ Papier
- ✋ Papier bat ✊ Roche
Essayez de battre l'ordinateur ! 🎯
  """);
}

void main() {
  List<String> choices = ["R", "P", "C"];
  int userScore = 0, cpuScore = 0;

  displayRules();

  // Demander et valider le nombre de tours
  print("\nCombien de tours voulez-vous jouer ?");
  int numberOfRounds;
  try {
    numberOfRounds = validateNumberOfRounds(stdin.readLineSync());
    print("👍 La partie se jouera en $numberOfRounds tours !");
  } catch (e) {
    print(e);
    return; // Quitte le programme si le nombre est invalide
  }

  // Boucle principale du jeu
  for (var i = 1; i <= numberOfRounds; i++) {
    print("\n--- 🕹️ Round $i ---");

    // Obtenir le choix de l'utilisateur
    String userChoice = getUserChoice(choices);
    print("Votre choix : $userChoice");

    // Générer le choix de l'ordinateur
    String cpuChoice = choices[Random().nextInt(choices.length)];
    print("Choix de l'ordinateur : $cpuChoice");

    // Déterminer le gagnant
    String result = findWinner(userChoice, cpuChoice);
    switch (result) {
      case "Joueur":
        print("\n✅ Vous avez gagné ce tour !");
        userScore++;
        break;
      case "CPU":
        print("\n❌ L'ordinateur a gagné ce tour.");
        cpuScore++;
        break;
      default:
        print("\n🤝 Ce tour est une égalité.");
    }

    // Afficher le score
    print("📊 Score actuel - Vous : $userScore | Ordinateur : $cpuScore");
    print("\n==============================");
  }

  // Afficher le résultat final
  print("\n--- 🏆 Résultat final ---");
  if (userScore > cpuScore) {
    print("🎉 Félicitations ! Vous avez gagné avec un score de $userScore contre $cpuScore.");
  } else if (cpuScore > userScore) {
    print("😞 L'ordinateur a gagné avec un score de $cpuScore contre $userScore.");
  } else {
    print("🤝 C'est une égalité parfaite avec un score de $userScore partout.");
  }

  print("\nMerci d'avoir joué ! 🎮");
}
