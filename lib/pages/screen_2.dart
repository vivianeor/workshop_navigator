import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Tela 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/screen3',
                  arguments: 'money out <3',
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, fixedSize: const Size(200, 40)),
              child: const Text('Ir para tela 3'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, fixedSize: const Size(200, 40)),
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
