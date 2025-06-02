import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  
  // Données fictives d'utilisateurs
  final List<Map<String, String>> allUsers = [
    {'name': 'Marie Dupont', 'username': '@marie', 'avatar': 'https://i.pravatar.cc/150?img=1'},
    {'name': 'Jean Martin', 'username': '@jean', 'avatar': 'https://i.pravatar.cc/150?img=2'},
    {'name': 'Fatou Sall', 'username': '@fatou', 'avatar': 'https://i.pravatar.cc/150?img=3'},
    {'name': 'Ahmed Diallo', 'username': '@ahmed', 'avatar': 'https://i.pravatar.cc/150?img=4'},
    {'name': 'Sophie Laurent', 'username': '@sophie', 'avatar': 'https://i.pravatar.cc/150?img=5'},
  ];
  
  List<Map<String, String>> get filteredUsers {
    if (searchQuery.isEmpty) {
      return allUsers;
    }
    return allUsers.where((user) {
      return user['name']!.toLowerCase().contains(searchQuery) ||
             user['username']!.toLowerCase().contains(searchQuery);
    }).toList();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO-M2-6: Créer l'interface de recherche
      // appBar: AppBar(
      //   title: TextField(
      //     controller: searchController,
      //     decoration: InputDecoration(
      //       hintText: 'Rechercher...',
      //       border: InputBorder.none,
      //       hintStyle: TextStyle(color: Colors.white70),
      //     ),
      //     style: TextStyle(color: Colors.white),
      //     onChanged: (value) => setState(() => searchQuery = value.toLowerCase()),
      //   ),
      // ),
      // body: ListView.builder(
      //   itemCount: filteredUsers.length,
      //   itemBuilder: (context, index) {
      //     final user = filteredUsers[index];
      //     return ListTile(
      //       leading: CircleAvatar(backgroundImage: NetworkImage(user['avatar']!)),
      //       title: Text(user['name']!),
      //       subtitle: Text(user['username']!),
      //       trailing: ElevatedButton(
      //         onPressed: () {},
      //         child: Text('Suivre'),
      //         style: ElevatedButton.styleFrom(minimumSize: Size(80, 36)),
      //       ),
      //     );
      //   },
      // ),
      appBar: AppBar(
        title: Text('Rechercher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'Rechercher des utilisateurs',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
