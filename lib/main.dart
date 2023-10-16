import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
      ),
      home: const MyHomePage(title: 'Widget Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            color: Colors.blue,
            child: Center(
              child: Text(
                'Ini adalah contoh penggunaan Container',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Aksi yang akan dijalankan ketika tombol ditekan
            },
            child: Text('Tombol Elevated'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text('Rating: 4.5'),
            ],
          ),
          Image.network(
            'https://picsum.photos/id/7/300/200',
            width: 200,
            height: 150,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi yang akan dijalankan ketika tombol ditambahkan
        },
        tooltip: 'Tambah',
        child: Icon(Icons.add),
      ),
    );
  }
}
