import 'package:flutter/material.dart';


class TelaInicial extends StatelessWidget {
  const TelaInicial ({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salão de Festas',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Salão de Festas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 1),
                Text("Coluna 1"),
                Text("Coluna 2"),
                Text("Coluna 3"),
                const SizedBox(width: 1),
              ],
            ),
            Row(
              children: [
                Text("Coluna 2"),
              ],
            ),
            Row(
              children: [
                Text("Coluna 3"),
              ],
            ),
            Row(
              children: [
                Text("Coluna 4"),
              ],
            ),
            Row(
              children: [
                Text("Coluna 5"),
              ],
            ),
            Row(
              children: [
                Text("Coluna 6"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
