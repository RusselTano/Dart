import "dart:io";
import 'dart:math';

int validateNumberOfRounds(String? input) {
  if (input != null) {
    int? numberOfRounds =
        int.tryParse(input); // Essaye de convertir la chaîne en entier
    if (numberOfRounds != null && numberOfRounds > 0) {
      return numberOfRounds; // Retourne le nombre valide
    }
  }
  throw ("Le nombre de tour est invalide");
//  return null; // Retourne null si la vérification échoue
}

String? findWinner(String userChoice, String cpuChoice) {
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

main() {
// Declaration des variable
  List<String> choices = ["R", "P", "C"];
  int userScore = 0;
  String userChoice = "";
  int cpuScore = 0;
  String cpuChoice = "";
  int? numberOfRounds = 0;
  String? input = "";
  String? result = "";

// Affichage des règles du jeu
  print("🎮 Bienvenue au jeu Roche-Papier-Ciseaux 🎮");
  print("""
        Les règles sont simples :
        - ✊ Roche bat ✌️ Ciseaux
        - ✌️ Ciseaux bat ✋ Papier
        - ✋ Papier bat ✊ Roche
        Essayez de battre l'ordinateur ! 🎯
        """);

// Partie principale : demander le nombre de tours
  print("\nCombien de tours voulez-vous jouer ?");
  input = stdin.readLineSync();
  if (input != null) {
    numberOfRounds = int.tryParse(input);
  }

  print("La partie se fera en $numberOfRounds tours.");

  if (numberOfRounds != null) {
    for (var i = 1; i <= numberOfRounds; i++) {
      print("\n--- Round $i\n");

      //userChoice
      print(
          "Faites votre choix : R pour Roche, P pour Papier, C pour Ciseaux.");
      input = stdin.readLineSync();
      if (input != null) {
        userChoice = input.toUpperCase();

        // Boucle pour vérifier si le choix est invalide
        while (!choices.contains(userChoice)) {
          print("Choix invalide. Veuillez entrer R, P ou C.");
          input = stdin.readLineSync();
          if (input != null) {
            userChoice = input.toUpperCase();
          }
        }

        print("Votre choix : $userChoice");
      } else {
        print("Aucune entrée détectée.");
      }

      //cpuChoice
      cpuChoice = choices[Random().nextInt(choices.length)];
      print('Choix de l\'ordinateur : $cpuChoice');

      // Le gagnant du Round
      result = findWinner(userChoice, cpuChoice);
      switch (result) {
        case "Joueur":
          print("\n✅ Vous avez gagné ce tour !");
          userScore += 1;
          break;
        case "CPU":
          print("\n❌ L'ordinateur a gagné ce tour.");
          cpuScore += 1;
        default:
          print("\n🤝 Ce tour est une égalité.");
      }

      // Afficher les scores après chaque tour
      print("Score actuel - Vous : $userScore | Ordinateur : $cpuScore");

      print("\n==============================");
    }
  }

  // Résultat final
  print("\n--- Résultat final ---");
  if (userScore > cpuScore) 
    print("🎉 Félicitations ! Vous avez gagné avec un score de $userScore contre $cpuScore.");
   else if (cpuScore > userScore) 
    print("😞 L'ordinateur a gagné avec un score de $cpuScore contre $userScore.");
   else 
    print("🤝 C'est une égalité parfaite avec un score de $userScore partout.");
  
}
