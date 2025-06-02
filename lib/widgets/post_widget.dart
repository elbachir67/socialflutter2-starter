import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final Map<String, dynamic> post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;

  Map<String, dynamic> get post => widget.post;

  @override
  Widget build(BuildContext context) {
    // TODO-M2-1: Créer la structure de base du post avec Card
    // return Card(
    //   margin: EdgeInsets.symmetric(vertical: 8),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.all(12),
    //         child: Row(children: [
    //           CircleAvatar(
    //             radius: 20,
    //             backgroundImage: NetworkImage(post['userAvatar'] ?? 
    //               'https://via.placeholder.com/150'),
    //           ),
    //           SizedBox(width: 12),
    //           Expanded(child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(post['userName'] ?? 'Utilisateur',
    //                 style: TextStyle(fontWeight: FontWeight.bold)),
    //               Text(post['timestamp'] ?? 'Il y a 1 heure',
    //                 style: TextStyle(color: Colors.grey[600], fontSize: 12)),
    //             ],
    //           )),
    //           IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
    //         ]),
    //       ),
    //       if (post['content'] != null && post['content'].isNotEmpty)
    //         Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 12),
    //           child: Text(post['content']),
    //         ),
    //       // TODO-M2-2: Image ici
    //       // TODO-M2-3: Actions ici  
    //       // TODO-M2-4: Stats ici
    //     ],
    //   ),
    // );
    
    return Container(); // Remplacer par le code du TODO
  }
}
