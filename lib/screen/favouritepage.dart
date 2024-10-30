import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  final List<Map<String, String>> favorites;
  final Function(Map<String, String>) onDelete;

  FavoritesPage({required this.favorites, required this.onDelete});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late List<Map<String, String>> _favorites;

  @override
  void initState() {
    super.initState();
    _favorites = List.from(widget.favorites);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _favorites.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              _favorites[index]['title']!,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(_favorites[index]['description']!),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() {
                  // Remove the item from the local list
                  widget.onDelete(_favorites[index]);
                  _favorites.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
