import 'package:flutter/material.dart';
import 'package:home/main.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('title in appbar'),
        backgroundColor: theme.primaryColor,
      ),
      body: Center(
        child: Text('data in body of scaffold'),
      ),
      floatingActionButton: IconButton(onPressed: (){}, icon: Icon(Icons.abc)),
      drawer: Drawer(
        backgroundColor: theme.primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            // ListTile(title: Text('notes', style: TextStyle(color: Colors.pink)),),
            ...notesGo.map((note) => TileGo(go: note))

          ],
        ),
      ),
    );
  }
}

class TileGo extends StatelessWidget {

  final Go go;

  const TileGo({
    super.key,
    required this.go,
    });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(go.name),
      onTap: () {
        context.go('/${go.route}');
      },
    );
  }
}