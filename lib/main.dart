import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AlertDialog'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: MaterialButton(
              child: const Text('Show Dialog'),
                color: Colors.cyan,
                onPressed: () => showDialog(context: context,
                    builder: (BuildContext context) {
                      AlertDialog dialog = AlertDialog(
                        title: const Text('Title'),
                        content: const Text('This is my message'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Click'))
                        ],
                      );
                      return dialog;
                    }
                )
            ),
          ),
        ),
      ),
    );
  }
}
