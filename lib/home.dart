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
        child: Text('ashen\'s room'),
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


const String loremIpsum = '''
Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium
doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore
veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim
ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia
consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque
porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur
adipisci[ng] velit, sed quia non-numquam [do] eius modi tempora inci[di]dunt, ut
labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam,
quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut
aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in
ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui
dolorem eum fugiat, quo voluptas nulla pariatur?
''';
