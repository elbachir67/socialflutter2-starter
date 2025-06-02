import 'package:flutter/material.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  TextEditingController contentController = TextEditingController();
  bool hasImage = false;

  @override
  void dispose() {
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle publication'),
      ),
      // TODO-M2-7: Créer le formulaire de création de post
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: EdgeInsets.all(16),
      //     child: Column(children: [
      //       Row(children: [
      //         CircleAvatar(radius: 25, backgroundImage: 
      //           NetworkImage('https://i.pravatar.cc/150?img=1')),
      //         SizedBox(width: 12),
      //         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //           Text('Marie Dupont', style: TextStyle(fontWeight: FontWeight.bold)),
      //           Text('Nouvelle publication', style: TextStyle(color: Colors.grey[600])),
      //         ]),
      //       ]),
      //       SizedBox(height: 20),
      //       TextField(
      //         controller: contentController,
      //         maxLines: 5,
      //         decoration: InputDecoration(
      //           hintText: 'Quoi de neuf ?',
      //           border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      //           filled: true, fillColor: Colors.grey[100],
      //         ),
      //         onChanged: (_) => setState(() {}),
      //       ),
      //       Row(children: [
      //         IconButton(icon: Icon(Icons.photo_library, color: Colors.green),
      //           onPressed: () => setState(() => hasImage = true)),
      //         IconButton(icon: Icon(Icons.camera_alt, color: Colors.blue), onPressed: () {}),
      //         IconButton(icon: Icon(Icons.gif_box, color: Colors.purple), onPressed: () {}),
      //       ]),
      //       if (hasImage) Container(
      //         margin: EdgeInsets.symmetric(vertical: 16),
      //         height: 200,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(12),
      //           image: DecorationImage(
      //             image: NetworkImage('https://picsum.photos/400/300?random=3'),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         child: Align(
      //           alignment: Alignment.topRight,
      //           child: IconButton(
      //             icon: Icon(Icons.close, color: Colors.white),
      //             onPressed: () => setState(() => hasImage = false),
      //             style: IconButton.styleFrom(backgroundColor: Colors.black54),
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: contentController.text.isNotEmpty || hasImage ? () {
      //           ScaffoldMessenger.of(context).showSnackBar(
      //             SnackBar(content: Text('Publication créée !')));
      //           contentController.clear();
      //           setState(() => hasImage = false);
      //         } : null,
      //         child: Text('Publier'),
      //         style: ElevatedButton.styleFrom(
      //           minimumSize: Size(double.infinity, 48),
      //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      //         ),
      //       ),
      //     ]),
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_photo_alternate,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'Créer une nouvelle publication',
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
