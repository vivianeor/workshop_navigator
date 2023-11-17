import 'package:flutter/material.dart';
import 'package:workshop_navigator/pages/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Tela 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const Screen2(),
                ));
                /// OU por nagevacao global
                // navigatorKey.currentState
                //     ?.push(MaterialPageRoute(builder: (context) => const Screen2()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black, fixedSize: const Size(200, 40)),
              child: const Text('Ir para tela 2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).maybePop(),
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
