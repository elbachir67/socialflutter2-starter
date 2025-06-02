import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget _buildStatColumn(String count, String label) {
    return Column(children: [
      Text(count, style: TextStyle(fontWeight: FontWeight.bold)),
      Text(label, style: TextStyle(color: Colors.grey[600])),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/login',
                (route) => false,
              );
            },
          ),
        ],
      ),
      // TODO-M2-8: Créer l'en-tête du profil
      // body: SingleChildScrollView(
      //   child: Column(children: [
      //     Padding(
      //       padding: EdgeInsets.all(16),
      //       child: Column(children: [
      //         Row(children: [
      //           CircleAvatar(radius: 40, backgroundImage: 
      //             NetworkImage('https://i.pravatar.cc/150?img=1')),
      //           Expanded(
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 _buildStatColumn('12', 'Publications'),
      //                 _buildStatColumn('523', 'Abonnés'),
      //                 _buildStatColumn('150', 'Abonnements'),
      //               ],
      //             ),
      //           ),
      //         ]),
      //         SizedBox(height: 16),
      //         Align(
      //           alignment: Alignment.centerLeft,
      //           child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //             Text('Marie Dupont', style: TextStyle(fontWeight: FontWeight.bold)),
      //             Text('Passionnée de photographie 📸\nDakar, Sénégal'),
      //           ]),
      //         ),
      //         SizedBox(height: 16),
      //         Row(children: [
      //           Expanded(child: OutlinedButton(
      //             onPressed: () {},
      //             child: Text('Modifier le profil'),
      //             style: OutlinedButton.styleFrom(
      //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      //             ),
      //           )),
      //           SizedBox(width: 8),
      //           OutlinedButton(
      //             onPressed: () {},
      //             child: Icon(Icons.settings, size: 20),
      //             style: OutlinedButton.styleFrom(
      //               minimumSize: Size(40, 36),
      //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      //             ),
      //           ),
      //         ]),
      //       ]),
      //     ),
      //     Divider(height: 1),
      //     // TODO-M2-9: Grille ici
      //     // GridView.builder(
      //     //   shrinkWrap: true,
      //     //   physics: NeverScrollableScrollPhysics(),
      //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     //     crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2,
      //     //   ),
      //     //   itemCount: 12,
      //     //   itemBuilder: (context, index) => GestureDetector(
      //     //     onTap: () {},
      //     //     child: Container(
      //     //       decoration: BoxDecoration(
      //     //         image: DecorationImage(
      //     //           image: NetworkImage('https://picsum.photos/150?random=$index'),
      //     //           fit: BoxFit.cover,
      //     //         ),
      //     //       ),
      //     //     ),
      //     //   ),
      //     // ),
      //   ]),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'Votre profil',
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
