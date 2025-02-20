import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Image.network('https://picsum.photos/250?image=9'),
              title: Text('Pizza (32cm)'),
              subtitle: Text('Pepperóni\n1850 Ft'),
              trailing: Image.network('https://picsum.photos/250?image=9'),
            ),
            ListTile(
              leading: Image.network('https://picsum.photos/250?image=9'),
              title: Text('Spagetti'),
              subtitle: Text('Sok szósszal\n1450Ft'),
              trailing: Image.network('https://picsum.photos/250?image=9'),
            ),
            ListTile(
              leading: Image.network('https://picsum.photos/250?image=9'),
              title: Text('Gyros tál'),
              subtitle: Text('Pitával\n1999Ft'),
              trailing: Image.network('https://picsum.photos/250?image=9'),
            ),
            ListTile(
              leading: Image.network('https://picsum.photos/250?image=9'),
              title: Text('Almás pite'),
              subtitle: Text('1 szelet\n450Ft'),
              trailing: Image.network('https://picsum.photos/250?image=9'),
            ),
          ],
        ),
      ),
    );
  }
}
