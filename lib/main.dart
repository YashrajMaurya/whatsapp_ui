import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MyApp'),
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
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('d MMM, kk:mm').format(now);
    return Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Rushabh Dabhade'),
                      subtitle: Text(formattedDate),
                      leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/profile logo.jpg')),
                      trailing: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.phone_sharp)),
                      onTap: () {
                        print('Tap to Open Chat');
                      },
                    ),
                  );
                })));
  }
}
