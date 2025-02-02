import 'package:flutter/material.dart';

import 'componentes/jogo_da_velha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo =  'Jogo da Velha';
    return MaterialApp(
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: titulo),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        //color: Colors.red,
                        //child: const Text('Primeira Coluna'),
                        ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 10,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0), 
                        child: JogoDaVelha(),
                      )),
                  ),
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        //color: Colors.red,
                        //child: const Text('Terceira Coluna'),
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  //alignment: Alignment.center,
                  //color: Colors.blue,
                  //child: const Text('Layout Inferior'),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
