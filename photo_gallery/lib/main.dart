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
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            Image.network('https://picsum.photos/200?image=25'),
            Image.network('https://picsum.photos/200?image=26'),
            Image.network('https://picsum.photos/200?image=27'),
            Image.network('https://picsum.photos/200?image=28'),
            Image.network('https://picsum.photos/200?image=29'),
            Image.network('https://picsum.photos/200?image=30'),
            Image.network('https://picsum.photos/200?image=35'),
            Image.network('https://picsum.photos/200?image=36'),
            Image.network('https://picsum.photos/200?image=37'),
            Image.network('https://picsum.photos/200?image=38'),
            Image.network('https://picsum.photos/200?image=39'),
            Image.network('https://picsum.photos/200?image=40'),
            Image.network('https://picsum.photos/200?image=45'),
            Image.network('https://picsum.photos/200?image=46'),
            Image.network('https://picsum.photos/200?image=47'),
          ],
        ));
  }
}
