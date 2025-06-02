import 'package:flutter/material.dart';
import '../../widgets/post_widget.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  // Données fictives pour le moment
  List<Map<String, dynamic>> posts = [
    {
      'id': '1',
      'userName': 'Marie Dupont',
      'userAvatar': 'https://i.pravatar.cc/150?img=1',
      'timestamp': 'Il y a 2 heures',
      'content': 'Magnifique coucher de soleil à Dakar aujourd\'hui! 🌅',
      'imageUrl': 'https://picsum.photos/400/300?random=1',
      'likes': 42,
      'comments': 5,
    },
    {
      'id': '2',
      'userName': 'Jean Martin',
      'userAvatar': 'https://i.pravatar.cc/150?img=2',
      'timestamp': 'Il y a 5 heures',
      'content': 'Premier jour avec Flutter, j\'adore déjà! 💙',
      'likes': 18,
      'comments': 3,
    },
    {
      'id': '3',
      'userName': 'Fatou Sall',
      'userAvatar': 'https://i.pravatar.cc/150?img=3',
      'timestamp': 'Hier',
      'content': 'Nouvelle recette de thiéboudienne testée et approuvée! 🍛',
      'imageUrl': 'https://picsum.photos/400/300?random=2',
      'likes': 95,
      'comments': 12,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SocialFlutter'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {},
          ),
        ],
      ),
      // TODO-M2-5: Remplacer le body par un RefreshIndicator avec ListView.builder
      // body: RefreshIndicator(
      //   onRefresh: () async {
      //     await Future.delayed(Duration(seconds: 1));
      //     setState(() {});
      //   },
      //   child: ListView.builder(
      //     itemCount: posts.length,
      //     itemBuilder: (context, index) => PostWidget(post: posts[index]),
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 64,
              color: Colors.blue,
            ),
            SizedBox(height: 16),
            Text(
              'Bienvenue sur SocialFlutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Votre fil d\'actualité sera ici',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
