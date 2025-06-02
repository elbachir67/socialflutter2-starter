# Module 2 - Interface utilisateur et widgets

## État du projet
Le projet contient déjà toutes les fonctionnalités du Module 1 :
- ✅ Authentification (Login/Register)
- ✅ Navigation par routes
- ✅ Navigation par onglets (BottomNavigationBar)
- ✅ Écrans de base avec placeholders

## Objectifs du Module 2
Transformer les écrans temporaires en interfaces riches et interactives :
- Créer des widgets réutilisables (PostWidget)
- Implémenter des listes performantes avec ListView.builder
- Gérer les interactions utilisateur (likes, recherche)
- Créer des formulaires interactifs
- Utiliser GridView pour les grilles d'images

## TODO à compléter

### TODO-M2-1 : Structure du PostWidget
**Fichier :** `lib/widgets/post_widget.dart`
- Créer la structure Card avec en-tête, contenu et actions
- Gérer l'affichage conditionnel du contenu

### TODO-M2-2 : Image du post
**Fichier :** `lib/widgets/post_widget.dart`
- Ajouter l'affichage de l'image avec gestion d'erreur
- Utiliser Image.network avec dimensions fixes

### TODO-M2-3 : Actions du post
**Fichier :** `lib/widgets/post_widget.dart`
- Implémenter les boutons like, comment, share
- Gérer l'état du like avec setState

### TODO-M2-4 : Statistiques du post
**Fichier :** `lib/widgets/post_widget.dart`
- Afficher le nombre de likes et commentaires
- Affichage conditionnel si > 0

### TODO-M2-5 : Fil d'actualité
**Fichier :** `lib/screens/home/feed_screen.dart`
- Implémenter RefreshIndicator et ListView.builder
- Utiliser PostWidget pour chaque élément

### TODO-M2-6 : Interface de recherche
**Fichier :** `lib/screens/search/search_screen.dart`
- TextField dans AppBar pour la recherche
- Filtrage en temps réel des utilisateurs

### TODO-M2-7 : Formulaire de création
**Fichier :** `lib/screens/create/create_post_screen.dart`
- TextField multi-lignes pour le contenu
- Aperçu d'image et boutons d'action

### TODO-M2-8 : En-tête du profil
**Fichier :** `lib/screens/profile/profile_screen.dart`
- Avatar, statistiques et informations
- Boutons Modifier profil et Paramètres

### TODO-M2-9 : Grille de publications
**Fichier :** `lib/screens/profile/profile_screen.dart`
- GridView avec 3 colonnes
- Images carrées cliquables

## Test du projet

### Navigation Module 1 (déjà fonctionnelle)
1. Lancer l'app : `flutter run`
2. Écran de connexion s'affiche
3. Cliquer "Créer un compte" → navigation vers inscription
4. Remplir le formulaire → navigation vers écran principal
5. Les 4 onglets fonctionnent avec écrans temporaires

### Validation Module 2
Après avoir complété tous les TODO :
1. Le fil d'actualité affiche des posts avec images
2. Les likes sont interactifs (cœur rouge)
3. La recherche filtre les utilisateurs en temps réel
4. Le formulaire de création a un aperçu d'image
5. Le profil affiche une grille de photos

## Commandes utiles
```bash
# Lancer l'application
flutter run

# Hot reload (changements dans le code)
r

# Hot restart (reset complet de l'app)
R

# Nettoyer et reconstruire
flutter clean && flutter pub get
```

## Structure du projet
```
lib/
├── main.dart                    # Point d'entrée (Module 1 ✅)
├── screens/
│   ├── auth/
│   │   ├── login_screen.dart    # Connexion (Module 1 ✅)
│   │   └── register_screen.dart # Inscription (Module 1 ✅)
│   ├── main_screen.dart         # Navigation onglets (Module 1 ✅)
│   ├── home/
│   │   └── feed_screen.dart     # Fil actualité (TODO-M2-5)
│   ├── search/
│   │   └── search_screen.dart   # Recherche (TODO-M2-6)
│   ├── create/
│   │   └── create_post_screen.dart # Création (TODO-M2-7)
│   └── profile/
│       └── profile_screen.dart  # Profil (TODO-M2-8, M2-9)
└── widgets/
    └── post_widget.dart         # Widget post (TODO-M2-1 à M2-4)
```
