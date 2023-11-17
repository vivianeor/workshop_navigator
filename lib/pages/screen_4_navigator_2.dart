import 'package:flutter/material.dart';

class Screen4WithNavigator2 extends StatefulWidget {
  const Screen4WithNavigator2({Key? key}) : super(key: key);

  @override
  State<Screen4WithNavigator2> createState() => _Screen4WithNavigator2State();
}

class _Screen4WithNavigator2State extends State<Screen4WithNavigator2> {
  int index = 0;
  List pages = [
    MaterialPage(child: Container(color: Colors.deepPurple)),
    MaterialPage(child: Container(color: Colors.red)),
    MaterialPage(child: Container(color: Colors.grey)),
  ];
  late List currentPages = [pages[0]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testando Navigator 2.0'),
        backgroundColor: Colors.amber,
      ),
      body: Navigator(
        onPopPage: (route, result) {
          return route.didPop(result);
        },
        pages: List.from(currentPages),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Mudar'),
        onPressed: () {
          setState(() {
            index++;
            if (index < pages.length) {
              currentPages.add(pages[index]);
            } else {
              index = 0;
              currentPages.add(pages[index]);
            }
          });
        },
      ),
    );
  }
}
