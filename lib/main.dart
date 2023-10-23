import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 106, 0, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Counter Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _restartCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Color.fromARGB(
                255, 255, 255, 255), // Defina a cor do texto desejada
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.question_answer_sharp),
            const Text(
              'Quantity:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 26, 156, 9), // Defina a cor de fundo desejada
                    borderRadius: BorderRadius.circular(
                        15.0), // Opcional: arredonda as bordas
                  ),
                  child: ElevatedButton.icon(
                    onPressed: _incrementCounter,
                    icon: const Icon(
                      Icons.add,
                      size: 18,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    label: const Text(
                      "Increment",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255,
                            255), // Defina a cor do texto desejada
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 26, 156, 9), // Define a cor de fundo do botão como transparente
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 214, 2, 2),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: ElevatedButton.icon(
                    onPressed: _decrementCounter,
                    icon: const Icon(
                      Icons.remove,
                      size: 18,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    label: const Text(
                      "Decrement",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255,
                            255), // Defina a cor do texto desejada
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 214, 2, 2), // Define a cor de fundo do botão como transparente
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _restartCounter,
        tooltip: 'Reset Counter',
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(
          Icons.restart_alt,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}
