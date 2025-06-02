# 🚀 SocialFlutter - Module 2 : Interface utilisateur et widgets

> Cours pratique de développement mobile avec Flutter - Université Cheikh Anta Diop de Dakar

## 📋 Description

Ce dépôt contient le matériel de démarrage pour le **Module 2** du cours de programmation mobile avec Flutter. Vous allez transformer une application de base en un véritable réseau social en implémentant des interfaces utilisateur modernes et interactives.

### Ce que vous allez construire

- 📱 Un fil d'actualité avec des posts interactifs
- 🔍 Une interface de recherche d'utilisateurs
- ✏️ Un formulaire de création de publications
- 👤 Un profil utilisateur avec grille de photos
- ❤️ Des interactions (likes, commentaires)

## 🎯 Prérequis

### Environnement de développement

- **Flutter SDK** : Version 3.0 ou supérieure ([Installation](https://docs.flutter.dev/get-started/install))
- **Dart SDK** : Inclus avec Flutter
- **IDE** : VS Code ou Android Studio avec les plugins Flutter/Dart
- **Git** : Pour cloner le dépôt

### Connaissances requises

- ✅ Avoir complété le Module 1 ou connaître les bases de Flutter
- ✅ Comprendre les concepts de base : widgets, state, navigation
- ✅ Notions de programmation orientée objet

## 🛠️ Installation

### 1. Cloner ce dépôt

```bash
git clone https://github.com/elbachir67/socialflutter2-starter.git
cd socialflutter-module2
```

### 2. Rendre le script exécutable

```bash
chmod +x setup.sh
```

### 3. Lancer le script de configuration

```bash
./setup.sh module2
```

### 4. Vérifier l'installation

```bash
cd socialflutter  # Si le script a créé le projet
flutter doctor
flutter run
```

## 📂 Structure du projet généré

```
socialflutter/
├── lib/
│   ├── main.dart                    ✅ Point d'entrée (Module 1 complet)
│   ├── screens/
│   │   ├── auth/
│   │   │   ├── login_screen.dart    ✅ Connexion fonctionnelle
│   │   │   └── register_screen.dart ✅ Inscription fonctionnelle
│   │   ├── main_screen.dart         ✅ Navigation par onglets
│   │   ├── home/
│   │   │   └── feed_screen.dart     📝 TODO-M2-5
│   │   ├── search/
│   │   │   └── search_screen.dart   📝 TODO-M2-6
│   │   ├── create/
│   │   │   └── create_post_screen.dart 📝 TODO-M2-7
│   │   └── profile/
│   │       └── profile_screen.dart  📝 TODO-M2-8, M2-9
│   └── widgets/
│       └── post_widget.dart         📝 TODO-M2-1 à M2-4
└── MODULE2_GUIDE.md                 📚 Guide détaillé des TODO
```

## 📝 TODO à implémenter

Le script génère un projet avec le **Module 1 complet** (authentification + navigation) et des **TODO commentés** pour le Module 2 :

| TODO     | Fichier                   | Description                            |
| -------- | ------------------------- | -------------------------------------- |
| **M2-1** | `post_widget.dart`        | Structure Card d'un post               |
| **M2-2** | `post_widget.dart`        | Affichage de l'image                   |
| **M2-3** | `post_widget.dart`        | Actions (like, comment, share)         |
| **M2-4** | `post_widget.dart`        | Statistiques (likes, commentaires)     |
| **M2-5** | `feed_screen.dart`        | ListView.builder avec RefreshIndicator |
| **M2-6** | `search_screen.dart`      | Interface de recherche temps réel      |
| **M2-7** | `create_post_screen.dart` | Formulaire de création avec aperçu     |
| **M2-8** | `profile_screen.dart`     | En-tête du profil utilisateur          |
| **M2-9** | `profile_screen.dart`     | GridView des publications              |

### 💡 Comment procéder

1. **Ouvrir le fichier** contenant le TODO
2. **Localiser le commentaire** `// TODO-M2-X:`
3. **Décommenter le code** qui suit (il est fourni!)
4. **Tester** avec hot reload (`r`)
5. **Valider** avec le checkpoint du cours

## 🎮 Commandes utiles

```bash
# Lancer l'application
flutter run

# Hot reload (changements rapides)
r

# Hot restart (redémarrage complet)
R

# Lister les devices disponibles
flutter devices

# Nettoyer le projet
flutter clean

# Récupérer les dépendances
flutter pub get
```

## ⚠️ Résolution des problèmes

### Erreur : "An exception occurred applying plugin request"

**Cause** : Chemin avec caractères spéciaux (accents)
**Solution** : Déplacer le projet dans un chemin sans accents

```bash
cd C:\
mkdir FlutterProjects
cd FlutterProjects
# Relancer ./setup.sh module2
```

### Erreur : "Ce script doit être exécuté depuis la racine du projet Flutter"

**Cause** : Le script détecte qu'il n'est pas dans un projet Flutter
**Solution** : Normal ! Le script va créer le projet automatiquement

### L'application ne se lance pas

```bash
flutter doctor  # Vérifier l'installation
flutter clean   # Nettoyer
flutter pub get # Récupérer les dépendances
flutter run     # Relancer
```

## 📚 Documentation du cours

- **Cours PDF** : Fourni par votre enseignant
- **Module 1** : Fondations et Navigation (prérequis)
- **Module 2** : Interface utilisateur et widgets (ce module)
- **Module 3** : Gestion des données et état (à venir)
- **Module 4** : Fonctionnalités avancées (à venir)

## 🎓 Validation du module

Après avoir complété tous les TODO, votre application doit :

- ✅ Afficher un fil d'actualité avec des posts scrollables
- ✅ Permettre de liker les posts (cœur rouge)
- ✅ Filtrer les utilisateurs en temps réel dans la recherche
- ✅ Afficher un aperçu d'image dans le formulaire de création
- ✅ Montrer une grille de photos dans le profil
- ✅ Avoir une navigation fluide entre tous les écrans

## 🤝 Support

- **Problème technique** : Créer une issue sur ce dépôt
- **Question sur le cours** : Contacter votre enseignant
- **Documentation Flutter** : [flutter.dev](https://flutter.dev)

## 📄 Licence

Ce projet est fourni à des fins éducatives dans le cadre du cours de programmation mobile de l'UCAD.

---

**Bon développement !** 🚀

_Dr. El Hadji Bassirou TOURE - Département de Mathématiques et Informatique_
