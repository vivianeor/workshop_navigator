import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? arguments = '';
    ///Adicionei esse if para poder garantir que o TIPO passado é uma String
    if (ModalRoute.of(context)?.settings.arguments is String?) {
      arguments = ModalRoute.of(context)?.settings.arguments as String?;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Tela 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arguments ?? 'não recebi nada'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, fixedSize: const Size(200, 40)),
              child: const Text('Voltar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, fixedSize: const Size(200, 40)),
              child: const Text('Voltar ao inicio'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed('/screen4');
        },
        icon: const Icon(Icons.navigate_next_sharp),
        label: const Text('Navigator 2.0'),
      ),
    );
  }
}
